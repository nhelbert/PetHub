VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_ForgetPassword 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Forgot Password"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6765
   Icon            =   "F_ForgetPassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   6765
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cboQuestion1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   412
      TabIndex        =   7
      Top             =   1095
      Width           =   5985
   End
   Begin VB.ComboBox cboQuestion2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   412
      TabIndex        =   6
      Top             =   2415
      Width           =   5985
   End
   Begin VB.TextBox txtAnswer1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   650
      Left            =   2670
      MultiLine       =   -1  'True
      TabIndex        =   5
      Top             =   1530
      Width           =   3645
   End
   Begin VB.TextBox txtAnswer2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   650
      Left            =   2670
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   2835
      Width           =   3645
   End
   Begin VB.TextBox txtNewPassword 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3465
      TabIndex        =   3
      Top             =   3915
      Visible         =   0   'False
      Width           =   2880
   End
   Begin VB.TextBox txtUserName 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   2707
      TabIndex        =   1
      Top             =   360
      Width           =   3645
   End
   Begin OsenXPCntrl.OsenXPButton cmdNext 
      Height          =   495
      Left            =   4365
      TabIndex        =   0
      Top             =   4455
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
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
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ANSWER 1 :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   405
      TabIndex        =   10
      Top             =   1530
      Width           =   2265
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ANSWER 2 :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   405
      TabIndex        =   9
      Top             =   2835
      Width           =   2265
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "NEW PASSWORD :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   405
      TabIndex        =   8
      Top             =   3915
      Visible         =   0   'False
      Width           =   3030
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "USERNAME :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   412
      TabIndex        =   2
      Top             =   360
      Width           =   2265
   End
End
Attribute VB_Name = "F_ForgetPassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim blnSetNewPassword As Boolean
Dim objUserQuestions As Object


Private Sub Form_Load()
     strSQL = ""
     strSQL = strSQL & " Select * from userQuestions where deleteddate is null"
    
    Set objUserQuestions = clsConnect.GetRecordSet(strSQL)
    Call psubLoadCombo(cboQuestion1)
    Call psubLoadCombo(cboQuestion2)
End Sub
Private Sub psubLoadCombo(cbo As ComboBox)
    With objUserQuestions
        .MoveFirst
        Do While Not .EOF
            cbo.AddItem .Fields(1).Value
            .MoveNext
        Loop
    End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
    F_LogIn.Show

End Sub

Private Sub cmdNext_Click()
Dim objUserExist As Object
    If pfblnNotInput Then Exit Sub
    If Me.txtNewPassword.Visible Then
        Unload Me
    Else
    
        strSQL = ""
        strSQL = strSQL & " Select * from userswhere txtUserName ="
    
        Set objUserExist = clsConnect.GetRecordSet(strSQL)
    
        If MsgBox("Do you want to change password ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
            txtNewPassword.Visible = True
            Label3.Visible = True
            txtNewPassword.SetFocus
        Else
            Unload Me
        End If
    End If

End Sub
Private Function pfblnNotInput() As Boolean
If txtNewPassword.Visible Then
        If txtNewPassword.Text = "" Then
            txtNewPassword.SetFocus
            pfblnNotInput = True
        End If
     Else
         If txtUserName.Text = "" Then
            txtUserName.SetFocus
            pfblnNotInput = True
        ElseIf txtAnswer1.Text = "" Then
            txtAnswer1.SetFocus
            pfblnNotInput = True
        ElseIf txtAnswer2.Text = "" Then
            txtAnswer2.SetFocus
            pfblnNotInput = True
        End If
     End If

End Function

Private Sub txtUserName_Change()
            txtNewPassword.Visible = False
            Label3.Visible = False
            pfblnNotInput = False
End Sub
