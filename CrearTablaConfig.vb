Imports System.Data.SQLite

Module CrearTablaConfig
    Sub Main()
        Try
            Dim connectionString As String = "Data Source=C:\proyecto_vb\POS_SALE\POS_SALE\bin\Debug\Data\pos_sale.db;Version=3;"

            Using connection As New SQLiteConnection(connectionString)
                connection.Open()

                ' Crear la tabla config
                Dim createTableSQL As String = "CREATE TABLE IF NOT EXISTS config (" & _
                    "id INTEGER PRIMARY KEY AUTOINCREMENT, " & _
                    "sql1 TEXT, " & _
                    "idimpticket TEXT, " & _
                    "idimprpt TEXT, " & _
                    "idcaja INTEGER, " & _
                    "idsucursal INTEGER)"

                Using command As New SQLiteCommand(createTableSQL, connection)
                    command.ExecuteNonQuery()
                    Console.WriteLine("Tabla 'config' creada exitosamente.")
                End Using

                ' Insertar registro inicial
                Dim insertSQL As String = "INSERT INTO config (sql1, idimpticket, idimprpt, idcaja, idsucursal) " & _
                    "SELECT '', '', '', 1, 1 " & _
                    "WHERE NOT EXISTS (SELECT 1 FROM config)"

                Using command As New SQLiteCommand(insertSQL, connection)
                    Dim rows As Integer = command.ExecuteNonQuery()
                    If rows > 0 Then
                        Console.WriteLine("Registro inicial insertado.")
                    Else
                        Console.WriteLine("La tabla ya contiene datos.")
                    End If
                End Using

                ' Verificar que la tabla existe
                Dim verifySQL As String = "SELECT name FROM sqlite_master WHERE type='table' AND name='config';"
                Using command As New SQLiteCommand(verifySQL, connection)
                    Using reader As SQLiteDataReader = command.ExecuteReader()
                        If reader.Read() Then
                            Console.WriteLine("Verificación: Tabla 'config' existe correctamente.")
                        End If
                    End Using
                End Using

                connection.Close()
            End Using

            Console.WriteLine()
            Console.WriteLine("Proceso completado. Presione cualquier tecla para salir...")
            Console.ReadKey()

        Catch ex As Exception
            Console.WriteLine("Error: " & ex.Message)
            Console.WriteLine(ex.StackTrace)
            Console.WriteLine()
            Console.WriteLine("Presione cualquier tecla para salir...")
            Console.ReadKey()
        End Try
    End Sub
End Module
