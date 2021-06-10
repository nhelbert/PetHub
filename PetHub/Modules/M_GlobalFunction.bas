Attribute VB_Name = "M_GlobalFunction"
Public Function pfstrQuote(ByVal strNoQuote As String) As String
     Dim strTemp As String
     '------------------------------------------------------
     ' make sure we can write single quotes within a string
     '------------------------------------------------------
     strTemp = Replace(strNoQuote, "'", "''")
     
     pfstrQuote = "'" & strTemp & "'"
End Function
