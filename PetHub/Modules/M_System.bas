Attribute VB_Name = "M_System"



Option Explicit

Public clsConnect As New C_MySqlConnect

Public Const SystemTitle = "SAMPLE"
Public strSQL As String
Sub Main()
     Call clsConnect.SQLServer
     F_LogIn.Show
End Sub


