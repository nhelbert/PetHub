VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "C_MySqlConnect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private strInstanceName As String, _
    strDataBaseName As String, _
    strUserName     As String, _
    strPassWord     As String
    


Private adoConnection      As ADODB.Connection
Private blnConnected       As Boolean

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias _
    "GetPrivateProfileStringA" (ByVal lpApplicationName As String, _
    ByVal lpKeyName As Any, ByVal lpDefault As String, _
    ByVal lpReturnedString As String, ByVal nSize As Long, _
    ByVal lpFileName As String) As Long


Public Sub SQLServer(Optional ByVal strIniFile As String)
On Error GoTo lnError
If blnConnected Then Exit Sub
Set adoConnection = New ADODB.Connection

With adoConnection
.CursorLocation = adUseClient
.ConnectionString = "DRIVER={MySQL ODBC 5.3 Unicode Driver};Server=10.169.140.27;Port=3306;Database=pointofsales;Uid=root"
.Open
End With

blnConnected = True
Exit Sub

lnError:
blnConnected = False
MsgBox Err.Number & "-" & Err.Description, vbCritical, "System Error"
End Sub


Public Function GetRecordSet(ByVal strQuery As String) As Object
    Dim adoRecordset As ADODB.Recordset
    
     Set adoRecordset = New ADODB.Recordset
    
    On Error GoTo lnError
    adoRecordset.Open strQuery, adoConnection, adOpenDynamic, adLockReadOnly
    Set GetRecordSet = adoRecordset
    Exit Function
lnError:
     MsgBox strQuery & vbCrLf & vbCrLf & Err.Number & "-" & Err.Description, vbCritical, "System Error"

End Function


Property Get DBConnect() As Object
     Set DBConnect = adoConnection
End Property










