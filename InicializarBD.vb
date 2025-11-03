Imports System.Data.SQLite

Module InicializarBD
    Sub Main()
        Try
            Console.WriteLine("=== INICIALIZACIÓN DE BASE DE DATOS POS_SALE ===")
            Console.WriteLine()
            Console.WriteLine("Creando instancia de DBCONECTAR1...")

            ' Al crear una instancia, se ejecuta el constructor compartido (Shared Sub New)
            ' que llama a InitializeDatabase() y crea todas las tablas
            Dim db As New DBCONECTAR1()

            Console.WriteLine("Verificando que la base de datos esté operativa...")
            If db.Estabilizador() Then
                Console.WriteLine("Base de datos inicializada correctamente!")
            Else
                Console.WriteLine("Error: La base de datos no está accesible")
            End If

            ' Verificar tablas creadas
            Dim tablas As DataTable = db.ExecutarMySQLTablas("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name")

            Console.WriteLine()
            Console.WriteLine("Tablas creadas (" & tablas.Rows.Count & "):")
            For Each row As DataRow In tablas.Rows
                Console.WriteLine("  - " & row("name").ToString())
            Next

            db.Dispose()

            Console.WriteLine()
            Console.WriteLine("Inicialización completada exitosamente!")

        Catch ex As Exception
            Console.WriteLine("ERROR: " & ex.Message)
            Console.WriteLine(ex.StackTrace)
        End Try
    End Sub
End Module
