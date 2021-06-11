VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_ForgetPassword 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Forgot Password"
   ClientHeight    =   4935
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5910
   Icon            =   "F_ForgetPassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4935
   ScaleWidth      =   5910
   StartUpPosition =   1  'CenterOwner
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
      Left            =   150
      TabIndex        =   7
      Top             =   1095
      Width           =   5650
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
      Left            =   150
      TabIndex        =   6
      Top             =   2415
      Width           =   5650
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
      Left            =   2438
      MultiLine       =   -1  'True
      TabIndex        =   5
      Top             =   1530
      Width           =   3330
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
      Left            =   2438
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   2835
      Width           =   3330
   End
   Begin VB.TextBox txtNewPassword 
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
      Left            =   2438
      TabIndex        =   3
      Top             =   3735
      Visible         =   0   'False
      Width           =   3330
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
      Left            =   2438
      TabIndex        =   1
      Top             =   360
      Width           =   3330
   End
   Begin OsenXPCntrl.OsenXPButton cmdNext 
      Height          =   495
      Left            =   3780
      TabIndex        =   0
      Top             =   4320
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
      Caption         =   "Answer 1 :"
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
      Left            =   150
      TabIndex        =   10
      Top             =   1530
      Width           =   2265
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Answer 2 :"
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
      Left            =   150
      TabIndex        =   9
      Top             =   2835
      Width           =   2265
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "New Password :"
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
      Left            =   150
      TabIndex        =   8
      Top             =   3735
      Visible         =   0   'False
      Width           =   2265
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Username :"
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
      Left            =   150
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
Dim objUserExist As Object


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
Private Function pfGetQuestionName(intID As Integer) As String
 With objUserQuestions
    .MoveFirst
    Do While Not .EOF
    If intID = .Fields(0).Value Then
        pfGetQuestionName = .Fields(1).Value
    End If
    .MoveNext
    Loop
 End With
End Function
Private Function pfGetQuestionID(strValue As String) As Integer
 With objUserQuestions
    .MoveFirst
    Do While Not .EOF
    If strValue = .Fields(1).Value Then
        pfGetQuestionID = .Fields(0).Value
    End If
    .MoveNext
    Loop
 End With
End Function

Private Sub cmdNext_Click()
Dim blnOK As Boolean
    If pfblnNotInput Then Exit Sub
    If txtNewPassword.Visible Then
        strSQL = ""
        strSQL = strSQL & " Update users set password=" & pfstrQuote(txtNewPassword.Text)
        strSQL = strSQL & " Where employeeCode=" & pfstrQuote(txtUserName.Text)
        
        clsConnect.DBConnect.Execute (strSQL)
        
        MsgBox "Password change successfully. Please login your account", vbInformation, SystemTitle
        
        Unload Me
       
    Else
    

        
        If Not objUserExist.EOF Then
        
            If pfGetQuestionID(cboQuestion1.Text) = objUserExist.Fields(7).Value Then
                        
                If pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(8).Value Then
                    If txtAnswer1 = objUserExist.Fields(10).Value And txtAnswer2 = objUserExist.Fields(11).Value Then
                        blnOK = True
                    End If
                 
                ElseIf pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(9).Value Then
                    If txtAnswer1 = objUserExist.Fields(10).Value And txtAnswer2 = objUserExist.Fields(12).Value Then
                        blnOK = True
                    End If
                End If
            ElseIf pfGetQuestionID(cboQuestion1.Text) = objUserExist.Fields(8).Value Then
               If pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(7).Value Then
                    If txtAnswer1 = objUserExist.Fields(11).Value And txtAnswer2 = objUserExist.Fields(10).Value Then
                        blnOK = True
                    End If
                 
                ElseIf pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(9).Value Then
                    If txtAnswer1 = objUserExist.Fields(11).Value And txtAnswer2 = objUserExist.Fields(12).Value Then
                        blnOK = True
                    End If
                End If
            
            ElseIf pfGetQuestionID(cboQuestion1.Text) = objUserExist.Fields(9).Value Then
                    If pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(8).Value Then
                    If txtAnswer1 = objUserExist.Fields(12).Value And txtAnswer2 = objUserExist.Fields(11).Value Then
                        blnOK = True
                    End If
                 
                ElseIf pfGetQuestionID(cboQuestion2.Text) = objUserExist.Fields(7).Value Then
                    If txtAnswer1 = objUserExist.Fields(12).Value And txtAnswer2 = objUserExist.Fields(10).Value Then
                        blnOK = True
                    End If
                End If
            End If
            
        End If
        
        If blnOK Then
        
        
            If MsgBox("Do you want to change password ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
                txtNewPassword.Visible = True
                Label3.Visible = True
                txtNewPassword.SetFocus
            Else
            
                Set objUserData = objUserExist
                Unload Me
                F_LogIn.Hide
                F_MainMenu.Show
          
            End If
        Else
            MsgBox "Incorrect entry. Please try again", vbCritical, SystemTitle
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
        strSQL = ""
        strSQL = strSQL & " Select * from users where employeecode =" & pfstrQuote(txtUserName.Text)
    
        Set objUserExist = clsConnect.GetRecordSet(strSQL)
        
        If Not objUserExist.EOF Then
            cboQuestion1.Text = pfGetQuestionName(objUserExist(7).Value)
            cboQuestion2.Text = pfGetQuestionName(objUserExist(8).Value)
        End If
End Sub
