Imports System.Data.SQLite

Module VerificarTablas
    Sub Main()
        Try
            Dim connectionString As String = "Data Source=C:\proyecto_vb\POS_SALE\POS_SALE\bin\Debug\Data\pos_sale.db;Version=3;"

            Using connection As New SQLiteConnection(connectionString)
                connection.Open()

                Console.WriteLine("=== VERIFICACIÓN DE TABLAS EN LA BASE DE DATOS ===")
                Console.WriteLine()

                ' Obtener lista de todas las tablas
                Dim sql As String = "SELECT name FROM sqlite_master WHERE type='table' ORDER BY name"
                Using command As New SQLiteCommand(sql, connection)
                    Using reader As SQLiteDataReader = command.ExecuteReader()
                        Console.WriteLine("Tablas existentes:")
                        While reader.Read()
                            Console.WriteLine("  - " & reader("name").ToString())
                        End While
                    End Using
                End Using

                Console.WriteLine()
                Console.WriteLine("Proceso completado.")
                connection.Close()
            End Using

        Catch ex As Exception
            Console.WriteLine("Error: " & ex.Message)
            Console.WriteLine(ex.StackTrace)
        End Try
    End Sub
End Module
