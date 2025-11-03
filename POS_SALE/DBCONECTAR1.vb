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
            SQLiteConnection.CreateFile(DB_PATH)

            Using conn As New SQLiteConnection(CONNECTION_STRING)
                conn.Open()
                CreateTables(conn)
                CreateIndexes(conn)
                InsertDefaultData(conn)
            End Using
        End If
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
    Public Function EjecutarTransaccion(operaciones As List(Of OperacionSQL)) As Boolean
        Using conn As New SQLiteConnection(CONNECTION_STRING)
            conn.Open()
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
                idcaja INTEGER NOT NULL,
                idimpticket TEXT,
                sql1 TEXT
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de productos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS productos (
                codarticulo INTEGER PRIMARY KEY,
                descripcion TEXT NOT NULL,
                precio INTEGER DEFAULT 0,
                stock INTEGER DEFAULT 0,
                medidareferencia INTEGER DEFAULT 1,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de productos por venta
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_prodvta (
                id_prodvta INTEGER PRIMARY KEY AUTOINCREMENT,
                id_producto INTEGER NOT NULL,
                cod_plu INTEGER NOT NULL,
                precio INTEGER NOT NULL,
                id_sucursal INTEGER NOT NULL,
                id_activo INTEGER DEFAULT 1,
                id_plibre INTEGER DEFAULT 0,
                FOREIGN KEY (id_producto) REFERENCES productos(codarticulo)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de turnos Z
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_z (
                id_cabz INTEGER PRIMARY KEY AUTOINCREMENT,
                id_sucursal INTEGER NOT NULL,
                id_caja INTEGER NOT NULL,
                fec_ini DATE NOT NULL,
                hrs_ini TIME NOT NULL,
                fec_ter DATE,
                hrs_ter TIME,
                estado INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla cabecera de ventas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_cab (
                id_vencab INTEGER PRIMARY KEY AUTOINCREMENT,
                id_sucursal INTEGER NOT NULL,
                id_caja INTEGER NOT NULL,
                id_usuario INTEGER NOT NULL,
                fecha DATE NOT NULL,
                hora TIME NOT NULL,
                id_vtaz INTEGER NOT NULL,
                total INTEGER DEFAULT 0,
                estado INTEGER DEFAULT 1,
                FOREIGN KEY (id_usuario) REFERENCES usuario(idusuario),
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla detalle de ventas
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_det (
                id_detvta INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta INTEGER NOT NULL,
                id_producto INTEGER NOT NULL,
                numunico INTEGER,
                cant DECIMAL(10,3) NOT NULL,
                precio_unitario INTEGER NOT NULL,
                FOREIGN KEY (id_cabvta) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_producto) REFERENCES productos(codarticulo)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de tipos de pago
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_tipopago (
                id_tipopago INTEGER PRIMARY KEY AUTOINCREMENT,
                texto_tipopago TEXT NOT NULL,
                color_tipopago TEXT DEFAULT 'White',
                posicion INTEGER DEFAULT 0,
                in_doc INTEGER DEFAULT 0,
                id_activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de pagos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_pago (
                id_pago INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta INTEGER NOT NULL,
                id_tipo INTEGER NOT NULL,
                monto INTEGER NOT NULL,
                cambio INTEGER DEFAULT 0,
                FOREIGN KEY (id_cabvta) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_tipo) REFERENCES vta_tipopago(id_tipopago)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de log de productos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_log (
                id_log INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtacab INTEGER NOT NULL,
                log_desc TEXT,
                id_cabz INTEGER,
                fecha_log DATETIME DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (id_vtacab) REFERENCES vta_cab(id_vencab)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de descuentos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_descuento (
                id_descuento INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta INTEGER NOT NULL,
                id_usuario INTEGER NOT NULL,
                fecha DATE NOT NULL,
                hora TIME NOT NULL,
                monto_ant INTEGER NOT NULL,
                monto_desc INTEGER NOT NULL,
                FOREIGN KEY (id_cabvta) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_usuario) REFERENCES usuario(idusuario)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de sucursales
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS sucursal (
                id_sucursal INTEGER PRIMARY KEY AUTOINCREMENT,
                nom_sucursal TEXT NOT NULL,
                id_sucursalTalana INTEGER,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de boletas para arqueos
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_boleta (
                id_boleta INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtaz INTEGER NOT NULL,
                id_vtacab INTEGER NOT NULL,
                numini INTEGER NOT NULL,
                numfin INTEGER NOT NULL,
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz),
                FOREIGN KEY (id_vtacab) REFERENCES vta_cab(id_vencab)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de arqueos de caja
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_arqueo (
                id_arqueo INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtaz INTEGER NOT NULL,
                efectivo INTEGER DEFAULT 0,
                tdebito INTEGER DEFAULT 0,
                tcredito INTEGER DEFAULT 0,
                sodexo INTEGER DEFAULT 0,
                amipass INTEGER DEFAULT 0,
                trestaurant INTEGER DEFAULT 0,
                fecha_arqueo DATETIME DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (id_vtaz) REFERENCES vta_z(id_cabz)
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de pagos extendida (con rut_varios)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_pago2 (
                id_pago2 INTEGER PRIMARY KEY AUTOINCREMENT,
                id_cabvta INTEGER NOT NULL,
                id_tipo INTEGER NOT NULL,
                monto INTEGER NOT NULL,
                cambio INTEGER DEFAULT 0,
                rut_varios TEXT,
                FOREIGN KEY (id_cabvta) REFERENCES vta_cab(id_vencab),
                FOREIGN KEY (id_tipo) REFERENCES vta_tipopago(id_tipopago)
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
                desc_vtatipomov TEXT NOT NULL,
                tipo_mov INTEGER NOT NULL,
                activo INTEGER DEFAULT 1
            )"
            cmd.ExecuteNonQuery()

            ' Tabla de movimientos de caja (ingreso/egreso)
            cmd.CommandText = "CREATE TABLE IF NOT EXISTS vta_mov (
                id_mov_reg INTEGER PRIMARY KEY AUTOINCREMENT,
                id_vtaz INTEGER NOT NULL,
                id_mov INTEGER NOT NULL,
                id_cuenta INTEGER NOT NULL,
                monto INTEGER NOT NULL,
                fecha DATE NOT NULL,
                hora TIME NOT NULL,
                observacion TEXT,
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
                id_personal INTEGER PRIMARY KEY AUTOINCREMENT,
                rut TEXT NOT NULL UNIQUE,
                nombres TEXT NOT NULL,
                activo TEXT DEFAULT 'true'
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
                Nombre TEXT NOT NULL,
                telefono1 TEXT,
                idsucursal INTEGER NOT NULL,
                rut TEXT,
                activo INTEGER DEFAULT 1
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

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_arqueo_vtaz ON vta_arqueo(id_vtaz)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_pago2_cabvta ON vta_pago2(id_cabvta)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "CREATE INDEX IF NOT EXISTS idx_vta_mov_vtaz ON vta_mov(id_vtaz)"
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
            cmd.CommandText = "INSERT OR IGNORE INTO config (idcaja, idimpticket) VALUES (1, 'Microsoft Print to PDF')"
            cmd.ExecuteNonQuery()

            ' Sucursal principal
            cmd.CommandText = "INSERT OR IGNORE INTO sucursal (id_sucursal, nom_sucursal, id_sucursalTalana) VALUES (1, 'Sucursal Principal', 1)"
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
            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipomov (id_vtatipomov, desc_vtatipomov, tipo_mov) VALUES (1, 'Ingreso', 1)"
            cmd.ExecuteNonQuery()

            cmd.CommandText = "INSERT OR IGNORE INTO vta_tipomov (id_vtatipomov, desc_vtatipomov, tipo_mov) VALUES (2, 'Egreso', 2)"
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