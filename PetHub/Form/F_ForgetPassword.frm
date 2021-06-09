VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_ForgetPassword 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Forget Password"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6765
   Icon            =   "F_ForgetPassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   6765
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtNewPassword 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   465
      Left            =   397
      TabIndex        =   6
      Text            =   "New Password"
      Top             =   3855
      Visible         =   0   'False
      Width           =   5985
   End
   Begin VB.TextBox txtUserName 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   465
      Left            =   382
      TabIndex        =   0
      Text            =   "Username"
      Top             =   315
      Width           =   5985
   End
   Begin VB.TextBox txtAnswer2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   465
      Left            =   382
      TabIndex        =   4
      Text            =   "Answer 2"
      Top             =   3150
      Width           =   5985
   End
   Begin VB.TextBox txtAnswer1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   465
      Left            =   360
      TabIndex        =   2
      Text            =   "Answer 1"
      Top             =   1800
      Width           =   5985
   End
   Begin VB.ComboBox cboQuestion2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   382
      TabIndex        =   3
      Top             =   2550
      Width           =   5985
   End
   Begin VB.ComboBox cboQuestion1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   382
      TabIndex        =   1
      Top             =   1230
      Width           =   5985
   End
   Begin OsenXPCntrl.OsenXPButton cmdNext 
      Height          =   600
      Left            =   2385
      TabIndex        =   5
      Top             =   4470
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   1058
      BTYPE           =   4
      TX              =   "&Next"
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
      MICON           =   "F_ForgetPassword.frx":10CA
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
End
Attribute VB_Name = "F_ForgetPassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim blnSetNewPassword As Boolean
Private Sub cmdNext_Click()
    If pfblnNotInput Then Exit Sub
    If Me.txtNewPassword.Visible Then
        Unload Me
    Else
        If MsgBox("Do you want to change password ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
            txtNewPassword.Visible = True
            txtNewPassword.SetFocus
        Else
            Unload Me
        End If
    End If

End Sub
Private Function pfblnNotInput() As Boolean
     If txtNewPassword.Visible Then
        If txtNewPassword.ForeColor = vbButtonShadow Or txtNewPassword.Text = "" Then
            txtNewPassword.SetFocus
            pfblnNotInput = True
        End If
     Else
         If txtAnswer1.ForeColor = vbButtonShadow Or txtAnswer1.Text = "" Then
            txtAnswer1.SetFocus
            pfblnNotInput = True
        ElseIf txtAnswer2.ForeColor = vbButtonShadow Or txtAnswer2.Text = "" Then
            txtAnswer2.SetFocus
            pfblnNotInput = True
        End If
     End If

End Function

Private Sub txtAnswer1_GotFocus()
   If txtAnswer1.ForeColor = vbButtonShadow Then
        txtAnswer1.Text = ""
        txtAnswer1.ForeColor = vbWindowText
    End If
End Sub

Private Sub txtAnswer1_LostFocus()
  If txtAnswer1.Text = "" Then
        txtAnswer1.Text = "Answer 1"
        txtAnswer1.ForeColor = vbButtonShadow
    End If
End Sub

Private Sub txtAnswer2_GotFocus()
   If txtAnswer2.ForeColor = vbButtonShadow Then
        txtAnswer2.Text = ""
        txtAnswer2.ForeColor = vbWindowText
    End If
End Sub

Private Sub txtAnswer2_LostFocus()
  If txtAnswer2.Text = "" Then
        txtAnswer2.Text = "Answer 2"
        txtAnswer2.ForeColor = vbButtonShadow
    End If
End Sub

Private Sub txtNewPassword_LostFocus()
  If txtNewPassword.Text = "" Then
        txtNewPassword.Text = "New Password"
        txtNewPassword.ForeColor = vbButtonShadow
    End If
End Sub

Private Sub txtNewPassword_GotFocus()
   If txtNewPassword.ForeColor = vbButtonShadow Then
        txtNewPassword.Text = ""
        txtNewPassword.ForeColor = vbWindowText
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

