VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_LogIn 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Log-In"
   ClientHeight    =   3570
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6765
   Icon            =   "F_LogIn.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3570
   ScaleWidth      =   6765
   StartUpPosition =   2  'CenterScreen
   Begin OsenXPCntrl.OsenXPButton cmdLogIn 
      Height          =   500
      Left            =   4560
      TabIndex        =   2
      Top             =   2700
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "Login"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   16777215
      BCOLO           =   16777215
      FCOL            =   0
      FCOLO           =   16711680
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_LogIn.frx":000C
      PICN            =   "F_LogIn.frx":0028
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.TextBox txtPassword 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   525
      IMEMode         =   3  'DISABLE
      Left            =   1800
      TabIndex        =   1
      Text            =   "Password"
      ToolTipText     =   "PASSWORD"
      Top             =   1995
      Width           =   4725
   End
   Begin VB.TextBox txtUserName 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   525
      Left            =   1800
      TabIndex        =   0
      Text            =   "Username"
      ToolTipText     =   "USERNAME"
      Top             =   1350
      Width           =   4725
   End
   Begin OsenXPCntrl.OsenXPButton cmdForgotPassword 
      Height          =   500
      Left            =   1800
      TabIndex        =   3
      Top             =   2715
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "Forgot Password ?"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   16777215
      BCOLO           =   16777215
      FCOL            =   0
      FCOLO           =   16711680
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_LogIn.frx":05C4
      PICN            =   "F_LogIn.frx":05E0
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "SCAD Cabinet Warehouse"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1050
      Left            =   2250
      TabIndex        =   4
      Top             =   180
      Width           =   3975
   End
   Begin VB.Line Line1 
      X1              =   1620
      X2              =   1620
      Y1              =   180
      Y2              =   3315
   End
End
Attribute VB_Name = "F_LogIn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdForgotPassword_Click()
    F_ForgetPassword.Show
    Unload Me
End Sub
Private Function pfblnNotInput() As Boolean
  
         If txtUserName.ForeColor = vbButtonShadow Or txtUserName.Text = "" Then
            txtUserName.SetFocus
            pfblnNotInput = True
        ElseIf txtPassword.ForeColor = vbButtonShadow Or txtPassword.Text = "" Then
            txtPassword.SetFocus
            pfblnNotInput = True
        End If
   

End Function



Private Sub cmdLogIn_Click()
Dim objUsers As Object

    If pfblnNotInput Then Exit Sub
    
    strSQL = ""
    strSQL = strSQL & " SELECT * FROM Users where employeecode =" & pfstrQuote(txtUserName.Text)
    strSQL = strSQL & " AND password= " & pfstrQuote(txtPassword.Text)
    
    
    Set objUsers = clsConnect.GetRecordSet(strSQL)
    If Not objUsers.EOF Then
        F_MainMenu.Show
        MsgBox "Welcome " & objUsers.Fields("fullName"), vbInformation, SystemTitle
        Unload Me
    Else
     MsgBox "Account not register !", vbCritical, SystemTitle
    
    End If
    

End Sub

Private Sub txtPassword_GotFocus()
   If txtPassword.ForeColor = vbButtonShadow Then
        txtPassword.Text = ""
        txtPassword.ForeColor = vbWindowText
        txtPassword.PasswordChar = "x"
    End If
End Sub

Private Sub txtPassword_LostFocus()
  If txtPassword.Text = "" Then
        txtPassword.Text = "Password"
        txtPassword.ForeColor = vbButtonShadow
        txtPassword.PasswordChar = ""
    End If
End Sub

Private Sub txtUserName_GotFocus()
    
    If txtUserName.ForeColor = vbButtonShadow Then
        txtUserName.Text = ""
        txtUserName.ForeColor = vbWindowText
    End If
    
End Sub

Private Sub txtUserName_LostFocus()
  If txtUserName.Text = "" Then
        txtUserName.Text = "Username"
        txtUserName.ForeColor = vbButtonShadow
    End If
End Sub
