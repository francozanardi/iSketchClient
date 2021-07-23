Public Class Form1
    Public Sub Iniciar()
        Dim appPath As String
        appPath = Application.StartupPath
        WebBrowser1.Navigate(appPath & "/isketch.html")
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Iniciar()
    End Sub

End Class
