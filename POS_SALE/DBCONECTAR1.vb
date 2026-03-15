Imports System.Data.SQLite
Imports System.Data
Imports System.IO

''' <summary>
''' Clase de conexión SQLite optimizada para sistemas POS
''' Compatible con .NET Framework 4.8 y System.Data.SQLite
''' </summary>
Public Class DBCONECTAR1
    Implements IDisposable

    ' Configuración de base de datos
    Private Shared ReadOnly DB_PATH As String = Path.Combine(Application.StartupPath, "Data", "pos_sale.db")
    Private Shared ReadOnly CONNECTION_STRING As String = BuildConnectionString()

    ''' <summary>Ruta completa al archivo de base de datos SQLite.</summary>
    Public Shared ReadOnly Property RutaBD As String
        Get
            Return DB_PATH
        End Get
    End Property

    ' Propiedades públicas (compatibilidad con código existente)
    Public usr As Integer
    Public perfil As Integer

    ' Control de conexión
    Private currentConnection As SQLiteConnection
    Private disposed As Boolean = False

    Shared Sub New()
        ' Crear directorio de datos si no existe
        Directory.CreateDirectory(Path.GetDirectoryName(DB_PATH))

        ' Inicializar base de datos si es necesario
        InitializeDatabase()

        ' Configurar SQLite para máxima resistencia a cortes de luz
        ConfigureSQLiteForPOS()
    End Sub

    Private Shared Function BuildConnectionString() As String
        Return $"Data Source={DB_PATH};Version=3;Journal Mode=WAL;Synchronous=FULL;Cache Size=10000;Foreign Keys=True;BusyTimeout=30000;"
    End Function

    Private Shared Sub InitializeDatabase()
        If Not File.Exists(DB_PATH) Then
            CrearBDDesdesCero()
        Else
            ' Corre migraciones de columnas Y asegura que todas las tablas existan.
            ' CreateTables/CreateIndexes usan IF NOT EXISTS → seguros en BD existente.
            Using conn As New SQLiteConnection(CONNECTION_STRING)
                conn.Open()
                AplicarMigraciones(conn)
                CreateTables(conn)
                CreateIndexes(conn)
            End Using
        End If
    End Sub

    ''' <summary>
    ''' Agrega columnas que faltan en una BD existente (migraciones incrementales).
    ''' Seguro de ejecutar múltiples veces: solo actúa si la columna no existe.
    ''' </summary>
    Private Shared Sub AplicarMigraciones(conn As SQLiteConnection)
        Using cmd As New SQLiteCommand(conn)

            ' --- config: idsucursal (agregado en v2) ---
            If Not ColumnaExiste(conn, "config", "idsucursal") Then
                cmd.CommandText = "ALTER TABLE config ADD COLUMN idsucursal INTEGER DEFAULT 0"
                cmd.ExecuteNonQuery()
            End If

            ' --- config: idimprpt (agregado en v2) ---
            If Not ColumnaExiste(conn, "config", "idimprpt") Then
                cmd.CommandText = "ALTER TABLE config ADD COLUMN idimprpt TEXT"
                cmd.ExecuteNonQuery()
            End If

            ' --- config: apiurl (agregado en v4) ---
            If Not ColumnaExiste(conn, "config", "apiurl") Then
                cmd.CommandText = "ALTER TABLE config ADD COLUMN apiurl TEXT DEFAULT 'http://localhost:8000'"
                cmd.ExecuteNonQuery()
            End If

            ' --- vta_arqueo_det: tabla dinámica de tipos de pago (nuevas instalaciones ya la tienen,
            '     instalaciones antiguas tenían vta_arqueo con columnas fijas)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_arqueo_det (
                id_vtaz     INTEGER NOT NULL,
                id_tipopago INTEGER NOT NULL,
                monto       REAL    NOT NULL DEFAULT 0,
                PRIMARY KEY (id_vtaz, id_tipopago)
            )"
            cmd.ExecuteNonQuery()

            ' --- vta_det: eliminar FK constraints que causan error al agregar productos ---
            ' SQLite no soporta DROP CONSTRAINT, hay que recrear la tabla.
            ' Detectamos si aún tiene FK revisando el schema en sqlite_master.
            Dim schemaDet As String = ""
            Using schCmd As New SQLiteCommand(
                "SELECT sql FROM sqlite_master WHERE type='table' AND name='vta_det'", conn)
                Dim r = schCmd.ExecuteScalar()
                If r IsNot Nothing Then schemaDet = r.ToString()
            End Using
            If schemaDet.Contains("REFERENCES") Then
                cmd.CommandText = "ALTER TABLE vta_det RENAME TO vta_det_old"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "CREATE TABLE vta_det (
                    id_detvta       INTEGER PRIMARY KEY,
                    id_cabvta       INTEGER,
                    id_producto     INTEGER,
                    numunico        INTEGER,
                    cant            DECIMAL(10,3),
                    precio_unitario INTEGER,
                    desc_producto   TEXT
                )"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "INSERT INTO vta_det SELECT id_detvta,id_cabvta,id_producto,numunico,cant,precio_unitario,desc_producto FROM vta_det_old"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "DROP TABLE vta_det_old"
                cmd.ExecuteNonQuery()
            End If

            ' --- config: ultima_sync (agregado en v5) ---
            If Not ColumnaExiste(conn, "config", "ultima_sync") Then
                cmd.CommandText = "ALTER TABLE config ADD COLUMN ultima_sync TEXT"
                cmd.ExecuteNonQuery()
            End If

            ' --- vta_pago: eliminar FK + absorber vta_pago2 (rut_varios) ---
            ' vta_pago2 era un duplicado de vta_pago con una columna extra (rut_varios).
            ' Consolidamos todo en vta_pago.
            Dim schemaPago As String = ""
            Using schCmd As New SQLiteCommand(
                "SELECT sql FROM sqlite_master WHERE type='table' AND name='vta_pago'", conn)
                Dim r = schCmd.ExecuteScalar()
                If r IsNot Nothing Then schemaPago = r.ToString()
            End Using
            ' Necesita recrear si: tiene FK, no tiene rut_varios, o aún tiene PK compuesta (sin id_pago)
            Dim necesitaRecrear As Boolean = schemaPago.Contains("REFERENCES") OrElse
                                             Not schemaPago.Contains("rut_varios") OrElse
                                             Not schemaPago.Contains("id_pago")
            Dim pago2Existe As Boolean = False
            Using chk As New SQLiteCommand(
                "SELECT COUNT(*) FROM sqlite_master WHERE type='table' AND name='vta_pago2'", conn)
                pago2Existe = (CInt(chk.ExecuteScalar()) > 0)
            End Using
            If necesitaRecrear Then
                cmd.CommandText = "ALTER TABLE vta_pago RENAME TO vta_pago_old"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "CREATE TABLE vta_pago (
                    id_pago    INTEGER PRIMARY KEY AUTOINCREMENT,
                    id_cabvta  INTEGER NOT NULL DEFAULT 0,
                    id_tipo    INTEGER NOT NULL DEFAULT 0,
                    monto      REAL    NOT NULL DEFAULT 0,
                    cambio     INTEGER NOT NULL DEFAULT 0,
                    rut_varios TEXT
                )"
                cmd.ExecuteNonQuery()
                ' Prioridad: vta_pago2 (tiene rut_varios), luego vta_pago_old para los demás
                If pago2Existe Then
                    cmd.CommandText = "INSERT INTO vta_pago (id_cabvta,id_tipo,monto,cambio,rut_varios) " &
                                      "SELECT id_cabvta,id_tipo,monto,cambio,rut_varios FROM vta_pago2"
                    cmd.ExecuteNonQuery()
                End If
                cmd.CommandText = "INSERT INTO vta_pago (id_cabvta,id_tipo,monto,cambio) " &
                                  "SELECT id_cabvta,id_tipo,monto,cambio FROM vta_pago_old"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "DROP TABLE vta_pago_old"
                cmd.ExecuteNonQuery()
                If pago2Existe Then
                    cmd.CommandText = "DROP TABLE vta_pago2"
                    cmd.ExecuteNonQuery()
                End If
            ElseIf pago2Existe Then
                ' Ya tiene el esquema correcto, solo absorber vta_pago2 pendiente
                cmd.CommandText = "INSERT INTO vta_pago (id_cabvta,id_tipo,monto,cambio,rut_varios) " &
                                  "SELECT id_cabvta,id_tipo,monto,cambio,rut_varios FROM vta_pago2 " &
                                  "WHERE rut_varios IS NOT NULL"
                cmd.ExecuteNonQuery()
                cmd.CommandText = "DROP TABLE vta_pago2"
                cmd.ExecuteNonQuery()
            End If

            ' --- sucursal: columnas agregadas en v3 ---
            If Not ColumnaExiste(conn, "sucursal", "suc_ab") Then
                cmd.CommandText = "ALTER TABLE sucursal ADD COLUMN suc_ab TEXT"
                cmd.ExecuteNonQuery()
            End If
            If Not ColumnaExiste(conn, "sucursal", "activo_caja") Then
                cmd.CommandText = "ALTER TABLE sucursal ADD COLUMN activo_caja INTEGER DEFAULT 1"
                cmd.ExecuteNonQuery()
            End If
            If Not ColumnaExiste(conn, "sucursal", "id_sucursalTalana") Then
                cmd.CommandText = "ALTER TABLE sucursal ADD COLUMN id_sucursalTalana INTEGER"
                cmd.ExecuteNonQuery()
            End If

        End Using
    End Sub

    Private Shared Function ColumnaExiste(conn As SQLiteConnection, tabla As String, columna As String) As Boolean
        Using cmd As New SQLiteCommand($"PRAGMA table_info({tabla})", conn)
            Using reader = cmd.ExecuteReader()
                While reader.Read()
                    If reader("name").ToString().ToLower() = columna.ToLower() Then
                        Return True
                    End If
                End While
            End Using
        End Using
        Return False
    End Function

    ''' <summary>
    ''' Borra la BD existente y la recrea con esquema vacío + datos por defecto.
    ''' Usar desde el form de Configuración al reinstalar el POS.
    ''' </summary>
    Public Shared Sub ReinicializarBD()
        ' Cerrar cualquier conexión estática en caché
        SQLiteConnection.ClearAllPools()

        If File.Exists(DB_PATH) Then
            File.Delete(DB_PATH)
        End If

        CrearBDDesdesCero()
    End Sub

    Private Shared Sub CrearBDDesdesCero()
        Directory.CreateDirectory(Path.GetDirectoryName(DB_PATH))
        SQLiteConnection.CreateFile(DB_PATH)

        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            CreateTables(conn)
            CreateIndexes(conn)
            InsertDefaultData(conn)
        End Using
    End Sub

    Private Shared Sub ConfigureSQLiteForPOS()
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            Using cmd As New SQLiteCommand(conn)
                cmd.CommandText = "PRAGMA journal_mode = WAL"
                cmd.ExecuteNonQuery()

                cmd.CommandText = "PRAGMA synchronous = FULL"
                cmd.ExecuteNonQuery()

                cmd.CommandText = "PRAGMA foreign_keys = ON"
                cmd.ExecuteNonQuery()

                cmd.CommandText = "PRAGMA temp_store = MEMORY"
                cmd.ExecuteNonQuery()

                cmd.CommandText = "PRAGMA cache_size = 10000"
                cmd.ExecuteNonQuery()

                cmd.CommandText = "PRAGMA wal_autocheckpoint = 1000"
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub

    ''' <summary>
    ''' Ejecuta una consulta SELECT y devuelve un DataReader
    ''' NOTA: Debe cerrar manualmente con CerrarMySQL()
    ''' </summary>
    Public Function ExecutarMySQL(sql As String) As SQLiteDataReader
        Try
            currentConnection = New SQLiteConnection(CONNECTION_STRING)
            currentConnection.Open()
            Dim cmd As New SQLiteCommand(sql, currentConnection)
            Return cmd.ExecuteReader()
        Catch ex As Exception
            If currentConnection IsNot Nothing Then
                currentConnection.Close()
                currentConnection.Dispose()
                currentConnection = Nothing
            End If
            MessageBox.Show($"Error de SQLite: {sql} - {ex.Message}")
            Throw
        End Try
    End Function

    ''' <summary>
    ''' Versión parametrizada segura para prevenir inyección SQL
    ''' </summary>
    Public Function ExecutarMySQL(sql As String, parametros As Dictionary(Of String, Object)) As SQLiteDataReader
        Try
            currentConnection = New SQLiteConnection(CONNECTION_STRING)
            currentConnection.Open()
            Using cmd As New SQLiteCommand(sql, currentConnection)
                For Each param In parametros
                    cmd.Parameters.AddWithValue(param.Key, param.Value)
                Next
                Return cmd.ExecuteReader()
            End Using
        Catch ex As Exception
            If currentConnection IsNot Nothing Then
                currentConnection.Close()
                currentConnection.Dispose()
                currentConnection = Nothing
            End If
            MessageBox.Show($"Error de SQLite: {sql} - {ex.Message}")
            Throw
        End Try
    End Function

    ''' <summary>
    ''' Ejecuta consultas INSERT, UPDATE, DELETE
    ''' </summary>
    Public Function ExecutarMySQLInsert(sql As String) As Integer
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            Using cmd As New SQLiteCommand(sql, conn)
                Return cmd.ExecuteNonQuery()
            End Using
        End Using
    End Function

    ''' <summary>
    ''' Versión parametrizada segura para INSERT/UPDATE/DELETE
    ''' </summary>
    Public Function ExecutarMySQLInsert(sql As String, parametros As Dictionary(Of String, Object)) As Integer
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            Using cmd As New SQLiteCommand(sql, conn)
                For Each param In parametros
                    cmd.Parameters.AddWithValue(param.Key, param.Value)
                Next
                Return cmd.ExecuteNonQuery()
            End Using
        End Using
    End Function

    ''' <summary>
    ''' Carga datos en un DataTable
    ''' </summary>
    Public Function ExecutarMySQLTablas(sql As String) As DataTable
        Dim tabla As New DataTable()
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            Using cmd As New SQLiteCommand(sql, conn)
                Using adapter As New SQLiteDataAdapter(cmd)
                    adapter.Fill(tabla)
                End Using
            End Using
        End Using
        Return tabla
    End Function

    ''' <summary>
    ''' Versión parametrizada para DataTable
    ''' </summary>
    Public Function ExecutarMySQLTablas(sql As String, parametros As Dictionary(Of String, Object)) As DataTable
        Dim tabla As New DataTable()
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            Using cmd As New SQLiteCommand(sql, conn)
                For Each param In parametros
                    cmd.Parameters.AddWithValue(param.Key, param.Value)
                Next
                Using adapter As New SQLiteDataAdapter(cmd)
                    adapter.Fill(tabla)
                End Using
            End Using
        End Using
        Return tabla
    End Function

    ''' <summary>
    ''' Cierra la conexión actual
    ''' </summary>
    Public Sub CerrarMySQL()
        If currentConnection IsNot Nothing Then
            currentConnection.Close()
            currentConnection.Dispose()
            currentConnection = Nothing
        End If
    End Sub

    ''' <summary>
    ''' Compatibilidad: Métodos adicionales para transición desde MySQL
    ''' </summary>
    Public Function ExecutarMySQLProd(sql As String) As SQLiteDataReader
        ' En SQLite no hay separación de conexiones, usar la misma
        Return ExecutarMySQL(sql)
    End Function

    Public Function ExecutarMySQLInsertProd(sql As String) As Integer
        ' En SQLite no hay separación de conexiones, usar la misma
        Return ExecutarMySQLInsert(sql)
    End Function

    Public Function ExecutarDelegateMySQL(sql As String) As SQLiteDataReader
        ' En SQLite no hay separación de conexiones, usar la misma
        Return ExecutarMySQL(sql)
    End Function

    Public Function Estabilizador() As Boolean
        ' Verifica si la base de datos está accesible
        Try
            Using conn As New SQLiteConnection(CONNECTION_STRING)
                conn.Open()
                Return True
            End Using
        Catch ex As Exception
            Return False
        End Try
    End Function

    ''' <summary>
    ''' Autentica usuario de forma segura
    ''' </summary>
    Public Function AutenticarUsuario(clave As String) As UsuarioInfo
        Dim sql As String = "SELECT idusuario, nombre, perfil, id_sucursal FROM usuario WHERE activo = 1 AND clave = @clave"
        Dim parametros As New Dictionary(Of String, Object) From {{"@clave", clave}}

        Dim tabla As DataTable = ExecutarMySQLTablas(sql, parametros)

        If tabla.Rows.Count > 0 Then
            Dim row As DataRow = tabla.Rows(0)
            Return New UsuarioInfo With {
                .Id = Convert.ToInt32(row("idusuario")),
                .Nombre = row("nombre").ToString(),
                .Perfil = Convert.ToInt32(row("perfil")),
                .IdSucursal = Convert.ToInt32(row("id_sucursal"))
            }
        End If

        Return Nothing
    End Function

    ''' <summary>
    ''' Ejecuta múltiples operaciones en una transacción atómica
    ''' </summary>
    Public Function EjecutarTransaccion(operaciones As List(Of OperacionSQL),
                                         Optional deshabilitarFK As Boolean = False) As Boolean
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
            If deshabilitarFK Then
                Using pragma As New SQLiteCommand("PRAGMA foreign_keys = OFF", conn)
                    pragma.ExecuteNonQuery()
                End Using
            End If
            Using transaction As SQLiteTransaction = conn.BeginTransaction()
                Try
                    For Each operacion In operaciones
                        Using cmd As New SQLiteCommand(operacion.SQL, conn, transaction)
                            If operacion.Parametros IsNot Nothing Then
                                For Each param In operacion.Parametros
                                    cmd.Parameters.AddWithValue(param.Key, param.Value)
                                Next
                            End If
                            cmd.ExecuteNonQuery()
                        End Using
                    Next

                    transaction.Commit()
                    Return True

                Catch ex As Exception
                    transaction.Rollback()
                    MessageBox.Show($"Error en transacción: {ex.Message}")
                    Return False
                End Try
            End Using
            If deshabilitarFK Then
                Using pragma As New SQLiteCommand("PRAGMA foreign_keys = ON", conn)
                    pragma.ExecuteNonQuery()
                End Using
            End If
        End Using
    End Function

    ''' <summary>
    ''' Procesa una venta completa de forma atómica
    ''' </summary>
    Public Function ProcesarVentaCompleta(idVenta As Integer, pagos As List(Of PagoInfo), detalles As List(Of DetalleVenta)) As Boolean
        Dim operaciones As New List(Of OperacionSQL)

        ' Actualizar cabecera de venta
        operaciones.Add(New OperacionSQL With {
            .SQL = "UPDATE vta_cab SET estado = @estado, total = @total WHERE id_vencab = @idVenta",
            .Parametros = New Dictionary(Of String, Object) From {
                {"@estado", 2},
                {"@total", pagos.Sum(Function(p) p.Monto)},
                {"@idVenta", idVenta}
            }
        })

        ' Insertar pagos
        For Each pago In pagos
            operaciones.Add(New OperacionSQL With {
                .SQL = "INSERT INTO vta_pago (id_cabvta, id_tipo, monto, cambio) VALUES (@idVenta, @tipo, @monto, @cambio)",
                .Parametros = New Dictionary(Of String, Object) From {
                    {"@idVenta", idVenta},
                    {"@tipo", pago.TipoPago},
                    {"@monto", pago.Monto},
                    {"@cambio", pago.Cambio}
                }
            })
        Next

        ' Actualizar stock
        For Each detalle In detalles
            operaciones.Add(New OperacionSQL With {
                .SQL = "UPDATE productos SET stock = stock - @cantidad WHERE codarticulo = @producto",
                .Parametros = New Dictionary(Of String, Object) From {
                    {"@cantidad", detalle.Cantidad},
                    {"@producto", detalle.IdProducto}
                }
            })
        Next

        Return EjecutarTransaccion(operaciones)
    End Function

    ''' <summary>
    ''' Realiza backup de la base de datos
    ''' </summary>
    Public Function CrearBackup(rutaDestino As String) As Boolean
        Try
            Dim rutaBackup As String = Path.Combine(rutaDestino, $"pos_backup_{DateTime.Now:yyyyMMdd_HHmmss}.db")
            File.Copy(DB_PATH, rutaBackup, True)
            Return True
        Catch ex As Exception
            MessageBox.Show($"Error creando backup: {ex.Message}")
            Return False
        End Try
    End Function

    Private Shared Sub CreateTables(conn As SQLiteConnection)
        Using cmd As New SQLiteCommand(conn)
            ' Tabla de usuarios
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS usuario (
                idusuario INTEGER PRIMARY KEY AUTOINCREMENT,
                nombre TEXT NOT NULL,
                clave TEXT NOT NULL,
                claveaut TEXT,
                perfil INTEGER NOT NULL,
                id_sucursal INTEGER NOT NULL,
                activo INTEGER DEFAULT 1,
                fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de configuración
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS config (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                idsucursal INTEGER DEFAULT 0,
                idcaja INTEGER DEFAULT 0,
                idimpticket TEXT,
                idimprpt TEXT,
                sql1 TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de productos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS productos (
                codarticulo INTEGER PRIMARY KEY,
                descripcion TEXT,
                dpto INTEGER,
                seccion INTEGER,
                refproveedor TEXT,
                unidadmedida TEXT,
                medidareferencia INTEGER DEFAULT 1,
                pedidoloc INTEGER DEFAULT 0,
                porpeso TEXT,
                descatalogado TEXT,
                precio INTEGER DEFAULT 0,
                stock INTEGER DEFAULT 0,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de productos por venta
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_prodvta (
                id_producto INTEGER NOT NULL,
                cod_plu INTEGER NOT NULL,
                id_sucursal INTEGER NOT NULL,
                id_activo INTEGER DEFAULT 1,
                descuentos INTEGER DEFAULT 0,
                precio REAL DEFAULT 0,
                id_plibre INTEGER DEFAULT 0,
                PRIMARY KEY (id_producto, cod_plu, id_sucursal),
                FOREIGN KEY (id_producto) REFERENCES productos(codarticulo)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de turnos Z
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_z (
                id_cabz INTEGER PRIMARY KEY,
                id_sucursal INTEGER,
                id_caja INTEGER,
                fec_ini DATE,
                hrs_ini TIME,
                fec_ter DATE,
                hrs_ter TIME,
                num_z INTEGER,
                estado INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla cabecera de ventas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_cab (
                id_vencab INTEGER PRIMARY KEY,
                id_sucursal INTEGER,
                id_caja INTEGER,
                id_usuario INTEGER,
                fecha DATE,
                hora TIME,
                id_vtaz INTEGER,
                total REAL DEFAULT 0,
                estado INTEGER DEFAULT 1,
                numboleta INTEGER,
                id_mtvoanula INTEGER,
                obsmtvoanula TEXT,
                FOREIGN KEY (id_usuario) REFERENCES usuario(idusuario),
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla detalle de ventas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_det (
                id_detvta INTEGER PRIMARY KEY,
                id_cabvta INTEGER,
                id_producto INTEGER,
                numunico INTEGER,
                cant DECIMAL(10,3),
                precio_unitario INTEGER,
                desc_producto TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de tipos de pago
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_tipopago (
                id_tipopago INTEGER PRIMARY KEY AUTOINCREMENT,
                texto_tipopago TEXT,
                img_tipopago BLOB,
                color_tipopago TEXT,
                in_doc INTEGER DEFAULT 0,
                id_activo INTEGER DEFAULT 1,
                Posicion INTEGER DEFAULT 0
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de pagos (incluye rut_varios para pago tipo "varios"/empleados)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_pago (
                id_pago    INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta  INTEGER NOT NULL DEFAULT 0,
                id_tipo    INTEGER NOT NULL DEFAULT 0,
                monto      REAL    NOT NULL DEFAULT 0,
                cambio     INTEGER NOT NULL DEFAULT 0,
                rut_varios TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de log de productos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_log (
                id_vtacab INTEGER,
                log_desc TEXT,
                id_cabz INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de descuentos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_descuento (
                id_vtadescuento INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta INTEGER,
                id_usuario INTEGER,
                fecha DATE,
                hora TIME,
                monto_ant INTEGER,
                monto_desc INTEGER,
                FOREIGN KEY (id_cabvta) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_usuario) REFERENCES usuario(idusuario)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de sucursales
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS sucursal (
                id_Sucursal INTEGER PRIMARY KEY AUTOINCREMENT,
                Nom_Sucursal TEXT,
                id_empresa INTEGER,
                suc_ab TEXT,
                activo_caja INTEGER,
                id_sucursalTalana INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de boletas para arqueos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_boleta (
                id_vtaboleta INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtaz INTEGER,
                id_vtacab INTEGER,
                numini INTEGER,
                numfin INTEGER,
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz),
                FOREIGN KEY (id_vtacab) REFERENCES vta_cab(id_vencab)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de arqueos de caja — dinámica por tipo de pago
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_arqueo_det (
                id_vtaz     INTEGER NOT NULL,
                id_tipopago INTEGER NOT NULL,
                monto       REAL    NOT NULL DEFAULT 0,
                PRIMARY KEY (id_vtaz, id_tipopago)
            )"
            cmd.ExecuteNonQuery()


            ' Tabla de cuentas contables
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_cuentas (
                id_vtacuentas INTEGER PRIMARY KEY AUTOINCREMENT,
                nom_cuenta TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de tipos de movimiento
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_tipomov (
                id_vtatipomov INTEGER PRIMARY KEY AUTOINCREMENT,
                desc_vtatipomov TEXT,
                tipo INTEGER,
                id_tipocuenta INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de movimientos de caja (ingreso/egreso)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_mov (
                id_movvtacab INTEGER PRIMARY KEY,
                id_cabvta INTEGER,
                id_cuenta INTEGER,
                id_mov INTEGER,
                id_tipo INTEGER,
                monto INTEGER,
                obs TEXT,
                id_vtaz INTEGER,
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz),
                FOREIGN KEY (id_mov) REFERENCES vta_tipomov(id_vtatipomov),
                FOREIGN KEY (id_cuenta) REFERENCES vta_cuentas(id_vtacuentas)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de entidades crediticias
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS entecrediticio (
                id_ente INTEGER PRIMARY KEY AUTOINCREMENT,
                nom_ente TEXT NOT NULL,
                id_tipo INTEGER NOT NULL,
                monto_credito INTEGER DEFAULT 0,
                id_sucursal INTEGER NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de créditos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_creditos (
                id_credito INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtacab INTEGER NOT NULL,
                id_ente INTEGER NOT NULL,
                id_tipo INTEGER NOT NULL,
                monto INTEGER NOT NULL,
                id_sucursal INTEGER NOT NULL,
                fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (id_vtacab) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_ente) REFERENCES entecrediticio(id_ente)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de motivos de anulación
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_mtvoanula (
                id_mtvoanula INTEGER PRIMARY KEY AUTOINCREMENT,
                desc_mtvoanula TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de motivos de descuento
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_mvodesc (
                id_mvodesc INTEGER PRIMARY KEY AUTOINCREMENT,
                desc_mvodescp TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de personal (para varios)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS personaltalana (
                rut TEXT NOT NULL,
                nombres TEXT,
                id_sucursal INTEGER,
                jefe INTEGER,
                activo TEXT,
                PRIMARY KEY (rut)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de clientes
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_cliente (
                id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
                cod_rut TEXT NOT NULL,
                rut_cliente TEXT NOT NULL,
                razon_social TEXT NOT NULL,
                giro TEXT,
                id_sucursal INTEGER NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de sucursales de clientes
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_clientesuc (
                id_clientesuc INTEGER PRIMARY KEY AUTOINCREMENT,
                cod_rut TEXT NOT NULL,
                dir TEXT NOT NULL,
                id_ciudad INTEGER,
                id_comuna INTEGER,
                rut_softland TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de tipos de traslado (para guías de despacho)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_tipotraslado (
                id_tipotraslado INTEGER PRIMARY KEY AUTOINCREMENT,
                desc_traslado TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de regiones/ciudades
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS s_region (
                ids_region INTEGER PRIMARY KEY,
                nom_region TEXT NOT NULL
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de comunas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS s_comuna (
                ids_comuna INTEGER PRIMARY KEY AUTOINCREMENT,
                id_region INTEGER NOT NULL,
                nom_comuna TEXT NOT NULL,
                FOREIGN KEY (id_region) REFERENCES s_region(ids_region)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de DTEs generados
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_dtegenerado (
                id_dte INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtacab INTEGER NOT NULL,
                id_sucursal INTEGER NOT NULL,
                fecha DATE NOT NULL,
                hora TIME NOT NULL,
                id_tipo INTEGER NOT NULL,
                folio INTEGER,
                FOREIGN KEY (id_vtacab) REFERENCES vta_cab(id_vencab)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de scripts ejecutados
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS exe_script_sucursal (
                id_exe INTEGER PRIMARY KEY AUTOINCREMENT,
                id_sucursal INTEGER NOT NULL,
                fecha_exe DATE NOT NULL,
                hora_exe TIME NOT NULL,
                Tipo_Query INTEGER NOT NULL
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de documentos XML
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS xml_doc (
                id_xml INTEGER PRIMARY KEY AUTOINCREMENT,
                id_sucursal INTEGER NOT NULL,
                xml_postoserver TEXT,
                xml_servertopos TEXT,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de turnos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS turno (
                id_turno INTEGER PRIMARY KEY AUTOINCREMENT,
                nombre TEXT NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de pedidos (cabecera)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS pedido_cab (
                idpedido_cab INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cliente INTEGER,
                numenc INTEGER DEFAULT 0,
                idusuario INTEGER NOT NULL,
                fec_ing DATE NOT NULL,
                hrs_ing TIME NOT NULL,
                abonado INTEGER DEFAULT 0,
                saldo INTEGER DEFAULT 0,
                total INTEGER NOT NULL,
                estado INTEGER DEFAULT 1,
                id_sucursal INTEGER NOT NULL
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de pedidos (detalle)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS pedido_det (
                idpedido_det INTEGER PRIMARY KEY AUTOINCREMENT,
                idpedido_cab INTEGER NOT NULL,
                id_producto INTEGER NOT NULL,
                cantidad DECIMAL(10,3) NOT NULL,
                medidas TEXT,
                precio INTEGER NOT NULL,
                mensaje TEXT,
                FOREIGN KEY (idpedido_cab) REFERENCES pedido_cab(idpedido_cab)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de clientes para pedidos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS cliente (
                idcliente INTEGER PRIMARY KEY AUTOINCREMENT,
                Nombre TEXT,
                telefono1 TEXT,
                idsucursal INTEGER,
                rut TEXT,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de departamentos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS dpto (
                NUMDPTO INTEGER PRIMARY KEY AUTOINCREMENT,
                DESCRIPCION TEXT,
                ACTIVO INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de secciones
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS secciones (
                NUMSECCION INTEGER PRIMARY KEY AUTOINCREMENT,
                NUMDPTO INTEGER,
                DESCRIPCION TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de unidades de medida
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS umedida (
                idumedida INTEGER PRIMARY KEY,
                descrip TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de precios por producto
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS precioproductos (
                CODARTICULO INTEGER NOT NULL,
                PBRUTO INTEGER NOT NULL,
                SUCURSAl INTEGER NOT NULL,
                PRIMARY KEY (CODARTICULO, PBRUTO, SUCURSAl)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de boletas nulas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_boleta_nula (
                id_vtaz INTEGER NOT NULL DEFAULT 0,
                num_boleta INTEGER NOT NULL DEFAULT 0,
                fecha DATE,
                monto INTEGER,
                motivo TEXT,
                rut TEXT,
                PRIMARY KEY (id_vtaz, num_boleta)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de restricciones de movimientos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_movrestriccion (
                id_vtarestriccion INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cuenta INTEGER,
                id_mov INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de stock de ventas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_stock (
                id_stock INTEGER PRIMARY KEY AUTOINCREMENT,
                id_sucursal INTEGER,
                id_producto INTEGER,
                fecha DATE,
                hora TIME,
                cantidad DECIMAL(11,3),
                nro_guia INTEGER,
                id_pedidocab INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de tipos de documento
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_tipodoc (
                id_tipodoc INTEGER PRIMARY KEY,
                desc TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de estados de venta
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_estado (
                id_vtaestado INTEGER PRIMARY KEY,
                descrip TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de efectivo por venta
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_efectivo (
                id_vtaefectivo INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtaz INTEGER,
                id_vtacab INTEGER,
                monto INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla cabecera de mesas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_cabmesas (
                idcab_mesa INTEGER PRIMARY KEY AUTOINCREMENT,
                nombre TEXT,
                id_sucursal INTEGER,
                id_activo INTEGER
            )"
            cmd.ExecuteNonQuery()

            ' Tabla detalle de mesas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_detmesas (
                idcab_mesa INTEGER PRIMARY KEY,
                id_nunmesa INTEGER,
                x INTEGER,
                y INTEGER
            )"
            cmd.ExecuteNonQuery()

        End Using
    End Sub

    Private Shared Sub CreateIndexes(conn As SQLiteConnection)
        Using cmd As New SQLiteCommand(conn)
            ' Índices originales
            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_usuario_clave ON usuario(clave)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_productos_activo ON productos(activo)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_prodvta_plu ON vta_prodvta(cod_plu, id_sucursal)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_cab_estado ON vta_cab(estado)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_cab_fecha ON vta_cab(fecha)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_det_cabvta ON vta_det(id_cabvta)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_pago_cabvta ON vta_pago(id_cabvta)"
            cmd.ExecuteNonQuery()

            ' Nuevos índices para optimización
            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_z_estado ON vta_z(estado, id_sucursal)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_boleta_vtaz ON vta_boleta(id_vtaz)"
            cmd.ExecuteNonQuery()



            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_mov_vtaz ON vta_mov(id_vtaz)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_stock_sucursal ON vta_stock(id_sucursal)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_dpto_activo ON dpto(ACTIVO)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_secciones_dpto ON secciones(NUMDPTO)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_creditos_ente ON vta_creditos(id_ente, id_sucursal)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_creditos_vtacab ON vta_creditos(id_vtacab)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_entecrediticio_sucursal ON entecrediticio(id_sucursal, activo)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_personaltalana_rut ON personaltalana(rut)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_cliente_rut ON vta_cliente(rut_cliente)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_clientesuc_rut ON vta_clientesuc(rut_softland)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_s_comuna_region ON s_comuna(id_region)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_pedido_cab_fecha ON pedido_cab(fec_ing, id_sucursal)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_pedido_det_cab ON pedido_det(idpedido_cab)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_log_cabz ON vta_log(id_cabz)"
            cmd.ExecuteNonQuery()
        End Using
    End Sub

    Private Shared Sub InsertDefaultData(conn As SQLiteConnection)
        Using cmd As New SQLiteCommand(conn)
            ' Configuración básica
            cmd.CommandText = "INSERT OR IGNORE INTO config (id, idsucursal, idcaja, idimpticket, idimprpt) VALUES (1, 0, 0, '', '')"
            cmd.ExecuteNonQuery()

            ' Sucursal principal
            cmd.CommandText = "INSERT OR IGNORE INTO sucursal (id_Sucursal, Nom_Sucursal, id_sucursalTalana) VALUES (1, 'Sucursal Principal', 1)"
            cmd.ExecuteNonQuery()

            ' Usuario administrador por defecto
            cmd.CommandText = "INSERT OR IGNORE INTO usuario (idusuario, nombre, clave, claveaut, perfil, id_sucursal) VALUES (1, 'Administrador', '1234', '9999', 1, 1)"
            cmd.ExecuteNonQuery()

            ' Tipos de pago
            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (1, 'Efectivo', 'LightGreen', 1, 0)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (2, 'Tarjeta Débito', 'LightBlue', 2, 0)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (3, 'Tarjeta Crédito', 'Orange', 3, 0)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (4, 'Crédito Cliente', 'Yellow', 4, 0)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (5, 'Sodexo', 'Pink', 5, 1)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (6, 'Amipass', 'LightCyan', 6, 1)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (7, 'T. Restaurant', 'Salmon', 7, 1)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, posicion, in_doc) VALUES (9, 'Varios', 'LightGray', 9, 0)"
            cmd.ExecuteNonQuery()

            ' Motivos de anulación por defecto
            cmd.CommandText = "INSERT OR IGNORE INTO vta_mtvoanula (id_mtvoanula, desc_mtvoanula) VALUES (1, 'Error de digitación')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_mtvoanula (id_mtvoanula, desc_mtvoanula) VALUES (2, 'Cliente solicita anulación')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_mtvoanula (id_mtvoanula, desc_mtvoanula) VALUES (3, 'Producto equivocado')"
            cmd.ExecuteNonQuery()

            ' Motivos de descuento
            cmd.CommandText = "INSERT OR IGNORE INTO vta_mvodesc (id_mvodesc, desc_mvodescp) VALUES (1, 'Descuento general')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_mvodesc (id_mvodesc, desc_mvodescp) VALUES (2, 'Promoción')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_mvodesc (id_mvodesc, desc_mvodescp) VALUES (3, 'Cliente frecuente')"
            cmd.ExecuteNonQuery()

            ' Tipos de movimiento (ingreso/egreso)
            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipomov (id_vtatipomov, desc_vtatipomov, tipo) VALUES (1, 'Ingreso', 1)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipomov (id_vtatipomov, desc_vtatipomov, tipo) VALUES (2, 'Egreso', 2)"
            cmd.ExecuteNonQuery()

            ' Cuentas contables
            cmd.CommandText = "INSERT OR IGNORE INTO vta_cuentas (id_vtacuentas, nom_cuenta) VALUES (1, 'Caja Principal')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_cuentas (id_vtacuentas, nom_cuenta) VALUES (2, 'Gastos Operacionales')"
            cmd.ExecuteNonQuery()

            ' Tipos de traslado
            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipotraslado (id_tipotraslado, desc_traslado) VALUES (1, 'Venta')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipotraslado (id_tipotraslado, desc_traslado) VALUES (2, 'Traslado entre bodegas')"
            cmd.ExecuteNonQuery()

            ' Regiones principales (Santiago y otras)
            cmd.CommandText = "INSERT OR IGNORE INTO s_region (ids_region, nom_region) VALUES (0, 'Sin Región')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO s_region (ids_region, nom_region) VALUES (13, 'Región Metropolitana')"
            cmd.ExecuteNonQuery()

            ' Comunas de Santiago (principales)
            cmd.CommandText = "INSERT OR IGNORE INTO s_comuna (ids_comuna, id_region, nom_comuna) VALUES (1, 13, 'Santiago Centro')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO s_comuna (ids_comuna, id_region, nom_comuna) VALUES (2, 13, 'Providencia')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO s_comuna (ids_comuna, id_region, nom_comuna) VALUES (3, 13, 'Las Condes')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO s_comuna (ids_comuna, id_region, nom_comuna) VALUES (4, 13, 'Maipú')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO s_comuna (ids_comuna, id_region, nom_comuna) VALUES (5, 13, 'La Florida')"
            cmd.ExecuteNonQuery()

            ' Turnos por defecto
            cmd.CommandText = "INSERT OR IGNORE INTO turno (id_turno, nombre) VALUES (1, 'Mañana')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO turno (id_turno, nombre) VALUES (2, 'Tarde')"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO turno (id_turno, nombre) VALUES (3, 'Noche')"
            cmd.ExecuteNonQuery()
        End Using
    End Sub

    Public Sub Dispose() Implements IDisposable.Dispose
        Dispose(True)
        GC.SuppressFinalize(Me)
    End Sub

    Protected Overridable Sub Dispose(disposing As Boolean)
        If Not disposed Then
            If disposing Then
                If currentConnection IsNot Nothing Then
                    currentConnection.Close()
                    currentConnection.Dispose()
                    currentConnection = Nothing
                End If
            End If
            disposed = True
        End If
    End Sub

End Class

#Region "Clases de Soporte"

Public Class OperacionSQL
    Public Property SQL As String
    Public Property Parametros As Dictionary(Of String, Object)
End Class

Public Class UsuarioInfo
    Public Property Id As Integer
    Public Property Nombre As String
    Public Property Perfil As Integer
    Public Property IdSucursal As Integer
End Class

Public Class PagoInfo
    Public Property TipoPago As Integer
    Public Property Monto As Integer
    Public Property Cambio As Integer
End Class

Public Class DetalleVenta
    Public Property IdProducto As Integer
    Public Property Cantidad As Decimal
    Public Property PrecioUnitario As Integer
End Class

#End Region