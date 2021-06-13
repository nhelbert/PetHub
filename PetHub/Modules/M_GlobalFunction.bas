Attribute VB_Name = "M_GlobalFunction"
Public Function pfstrQuote(ByVal strNoQuote As String) As String
     Dim strTemp As String
     '------------------------------------------------------
     ' make sure we can write single quotes within a string
     '------------------------------------------------------
     strTemp = Replace(strNoQuote, "'", "''")
     
     pfstrQuote = "'" & strTemp & "'"
End Function

Public Sub psubUpdateActivityLogs(strName As String, blnLogIn As Boolean)
Dim objUserExist As Object
        strSQL = ""
        strSQL = strSQL & " SELECT * FROM useractivity"
        strSQL = strSQL & " WHERE User=" & pfstrQuote(strName)
        
        Set objUserExist = clsConnect.GetRecordSet(strSQL)
        
        If objUserExist.EOF Then
            strSQL = ""
            strSQL = strSQL & " INSERT INTO useractivity (user) values(" & pfstrQuote(strName) & ")"
    
        Else
           strSQL = ""
            strSQL = strSQL & " UPDATE  useractivity set "
            If blnLogIn Then
              strSQL = strSQL & " LoginDate = now(),LogoutDate=null "
            Else
              strSQL = strSQL & " LogoutDate = now() "
            End If
            strSQL = strSQL & " WHERE user=" & pfstrQuote(strName)
            
        End If
   
        clsConnect.DBConnect.Execute (strSQL)
        
        
        
End Sub

Public Function pfNumberOnly(key As Integer) As Integer
    If (key < 48 Or key > 57) And key <> 8 Then
       pfNumberOnly = 0
    Else
       pfNumberOnly = key
    End If
End Function
