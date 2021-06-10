Attribute VB_Name = "M_System"



Option Explicit

Public clsConnect As New C_MySqlConnect

Public Const SystemTitle = "PetHub Sales and Inventory System"
Public strSQL As String
Public objUserData As Object
Sub Main()
     Call clsConnect.SQLServer
     F_LogIn.Show
End Sub


