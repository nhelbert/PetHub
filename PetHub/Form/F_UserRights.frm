VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_UserRights 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "User Rights"
   ClientHeight    =   7560
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   13410
   Icon            =   "F_UserRights.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   13410
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cboQuestion3 
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
      Left            =   9765
      TabIndex        =   7
      Top             =   5265
      Width           =   3330
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
      Left            =   9765
      TabIndex        =   6
      Top             =   4545
      Width           =   3330
   End
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
      Left            =   9765
      TabIndex        =   5
      Top             =   3825
      Width           =   3330
   End
   Begin VB.ComboBox cboAccessType 
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
      Left            =   9765
      TabIndex        =   2
      Top             =   1665
      Width           =   3330
   End
   Begin VB.TextBox txtUserName 
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
      Left            =   9765
      TabIndex        =   3
      Top             =   2385
      Width           =   3330
   End
   Begin VB.TextBox txtPassword 
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
      Left            =   9765
      TabIndex        =   4
      Top             =   3105
      Width           =   3330
   End
   Begin VB.TextBox txtName 
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
      Left            =   9765
      TabIndex        =   1
      Top             =   945
      Width           =   3330
   End
   Begin VB.TextBox txtSearch 
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
      Left            =   2430
      TabIndex        =   0
      Top             =   180
      Width           =   3330
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   6765
      Left            =   135
      TabIndex        =   8
      Top             =   630
      Width           =   9405
      _ExtentX        =   16589
      _ExtentY        =   11933
      _Version        =   393216
      Cols            =   6
      FixedCols       =   0
      HighLight       =   2
      SelectionMode   =   1
   End
   Begin OsenXPCntrl.OsenXPButton cmdAddUser 
      Height          =   495
      Left            =   9420
      TabIndex        =   10
      Top             =   60
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Add User"
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
      MICON           =   "F_UserRights.frx":10CA
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdUserLogs 
      Height          =   495
      Left            =   7290
      TabIndex        =   11
      Top             =   60
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&User Logs"
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
      MICON           =   "F_UserRights.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdAdd 
      Height          =   495
      Left            =   10485
      TabIndex        =   19
      Top             =   5760
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Add"
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
      MICON           =   "F_UserRights.frx":1102
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdUpdate 
      Height          =   495
      Left            =   10485
      TabIndex        =   20
      Top             =   6300
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Update"
      ENAB            =   0   'False
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
      MICON           =   "F_UserRights.frx":111E
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdDelete 
      Height          =   495
      Left            =   10485
      TabIndex        =   21
      Top             =   6795
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Delete"
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
      MICON           =   "F_UserRights.frx":113A
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Question 3 :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   18
      Top             =   4995
      Width           =   1230
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Question 2 :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   17
      Top             =   4275
      Width           =   1230
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Question 1 :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   16
      Top             =   3555
      Width           =   1230
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
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
      Height          =   240
      Left            =   9765
      TabIndex        =   15
      Top             =   2115
      Width           =   1200
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Password :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   14
      Top             =   2835
      Width           =   1155
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Access Type :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   13
      Top             =   1395
      Width           =   1500
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9765
      TabIndex        =   12
      Top             =   675
      Width           =   750
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "SEARCH :"
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
      Left            =   135
      TabIndex        =   9
      Top             =   180
      Width           =   2265
   End
End
Attribute VB_Name = "F_UserRights"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strAns1, strAns2, strAns3 As String
Dim intID As Integer
Dim objUserQuestions As Object



Private Sub cboQuestion1_Click()
    strAns1 = InputBox(cboQuestion1.Text, SystemTitle)
    If strAns1 = "" Then cboQuestion1.Text = ""
End Sub
Private Sub cboQuestion2_Click()
    strAns2 = InputBox(cboQuestion2.Text, SystemTitle)
     If strAns2 = "" Then cboQuestion2.Text = ""
End Sub
Private Sub cboQuestion3_Click()
    strAns3 = InputBox(cboQuestion3.Text, SystemTitle)
     If strAns3 = "" Then cboQuestion3.Text = ""
End Sub

Private Sub cmdAdd_Click()
    If pfblnNotInput Then Exit Sub
    If MsgBox("Are you sure you want to update this user ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        
        strSQL = ""
        strSQL = strSQL & " Insert into users"
        strSQL = strSQL & " (employeeCode,fullName,rights,password,fristQ,secondQ,thirdQ,firstAns,secondAns,thirdAns)"
        strSQL = strSQL & " values (" & pfstrQuote(txtUserName.Text)
        strSQL = strSQL & "     ," & pfstrQuote(txtName.Text)
        strSQL = strSQL & "     ," & IIf(cboAccessType.Text = "ADMIN", 0, 1)
        strSQL = strSQL & "     ," & pfstrQuote(txtPassword.Text)
        strSQL = strSQL & "     ," & pfGetQuestionID(cboQuestion1.Text)
        strSQL = strSQL & "     ," & pfGetQuestionID(cboQuestion2.Text)
        strSQL = strSQL & "     ," & pfGetQuestionID(cboQuestion3.Text)
        strSQL = strSQL & "     ," & pfstrQuote(strAns1)
        strSQL = strSQL & "     ," & pfstrQuote(strAns2)
        strSQL = strSQL & "     ," & pfstrQuote(strAns3) & ")"
        
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "User added successfully.", vbInformation, SystemTitle
        
        Call psubClear
        Call psubGetUsers
     
    End If
End Sub

Private Sub cmdAddUser_Click()

Call psubClear
  
End Sub
Private Sub psubClear()
    txtName.Text = ""
    cboAccessType.Text = ""
    cboQuestion1.Text = ""
    cboQuestion2.Text = ""
    cboQuestion3.Text = ""
    txtUserName.Text = ""
    txtPassword.Text = ""
    strAns1 = ""
    strAns2 = ""
    strAns3 = ""
    intID = 0
    txtName.SetFocus
    cmdUpdate.Enabled = False
    cmdAdd.Enabled = True
End Sub

Private Sub cmdDelete_Click()

     If MsgBox("Are you sure you want to delete this user ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        strSQL = ""
        strSQL = strSQL & " delete from users"
        strSQL = strSQL & " Where id=" & intID
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "User deleted successfully.", vbInformation, SystemTitle
        Call psubClear
        Call psubGetUsers
     
    End If
End Sub

Private Sub cmdUpdate_Click()
    If pfblnNotInput Then Exit Sub
    
    If MsgBox("Are you sure you want to add this user ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        
        strSQL = ""
        strSQL = strSQL & " Update users"
        strSQL = strSQL & " Set employeeCode=" & pfstrQuote(txtUserName.Text)
        strSQL = strSQL & "     ,fullName=" & pfstrQuote(txtName.Text)
        strSQL = strSQL & "     ,rights=" & IIf(cboAccessType.Text = "ADMIN", 0, 1)
        strSQL = strSQL & "     ,password=" & pfstrQuote(txtPassword.Text)
        strSQL = strSQL & "     ,fristQ=" & pfGetQuestionID(cboQuestion1.Text)
        strSQL = strSQL & "     ,secondQ=" & pfGetQuestionID(cboQuestion2.Text)
        strSQL = strSQL & "     ,thirdQ=" & pfGetQuestionID(cboQuestion3.Text)
        strSQL = strSQL & "     ,firstAns=" & pfstrQuote(strAns1)
        strSQL = strSQL & "     ,secondAns=" & pfstrQuote(strAns2)
        strSQL = strSQL & "     ,thirdAns=" & pfstrQuote(strAns3)
        
        strSQL = strSQL & " Where id=" & intID
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "Update user successful.", vbInformation, SystemTitle
        Call psubClear
        Call psubGetUsers
     
    End If
End Sub

Private Sub cmdUserLogs_Click()
    F_UserLogs.Show vbModal
End Sub


Private Sub Form_Load()
Call psubGetUsers
  
  cboAccessType.AddItem "ADMIN"
  cboAccessType.AddItem "USER"
       strSQL = ""
     strSQL = strSQL & " Select * from userQuestions where deleteddate is null"
    
    Set objUserQuestions = clsConnect.GetRecordSet(strSQL)
    Call psubLoadCombo(cboQuestion1)
    Call psubLoadCombo(cboQuestion2)
    Call psubLoadCombo(cboQuestion3)
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
Private Sub psubLoadFlexGrid(objData As Object)
    Dim a As Integer
    With MSFlexGrid1
        .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "ID", "NAME", "ACCESS TYPE", "USERNAME", "PASSWORD", "REGISTER DATE")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = Choose(a + 1, 1000, 2000, 1500, 1500, 1500, 1750)
                .RowHeight(0) = 400
                .CellFontBold = True
      Next a
  
        Do While Not objData.EOF
        
                .Rows = .Rows + 1
                .TextMatrix(.Rows - 1, 0) = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
                .TextMatrix(.Rows - 1, 1) = IIf(IsNull(objData.Fields(2).Value), "", objData.Fields(2).Value)
                .TextMatrix(.Rows - 1, 2) = IIf(IsNull(objData.Fields(4).Value), "", Choose(objData.Fields(4).Value + 1, "ADMIN", "USER"))
                .TextMatrix(.Rows - 1, 3) = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
                .TextMatrix(.Rows - 1, 4) = IIf(IsNull(objData.Fields(6).Value), "", objData.Fields(6).Value)
                .TextMatrix(.Rows - 1, 5) = IIf(IsNull(objData.Fields(13).Value), "", objData.Fields(13).Value)
              
           
            objData.MoveNext
        Loop
    
    End With
    

End Sub

Private Sub MSFlexGrid1_DblClick()
 Dim objUsers As Object


If MSFlexGrid1.Row <> 0 Then


    strSQL = ""
    strSQL = strSQL & "SELECT * FROM users"
    strSQL = strSQL & " Where id = " & MSFlexGrid1.TextMatrix(MSFlexGrid1.Row, 0)
    Set objUsers = clsConnect.GetRecordSet(strSQL)

    If Not objUsers.EOF Then
        txtName.Text = IIf(IsNull(objUsers.Fields(2).Value), "", objUsers.Fields(2).Value)
        cboAccessType.Text = IIf(IsNull(objUsers.Fields(4).Value), "", Choose(objUsers.Fields(4).Value + 1, "ADMIN", "USER"))
        cboQuestion1.Text = pfGetQuestionName(IIf(IsNull(objUsers.Fields(7).Value), 0, objUsers.Fields(7).Value))
        cboQuestion2.Text = pfGetQuestionName(IIf(IsNull(objUsers.Fields(8).Value), 0, objUsers.Fields(8).Value))
        cboQuestion3.Text = pfGetQuestionName(IIf(IsNull(objUsers.Fields(9).Value), 0, objUsers.Fields(9).Value))
        txtUserName.Text = IIf(IsNull(objUsers.Fields(1).Value), "", objUsers.Fields(1).Value)
        txtPassword.Text = IIf(IsNull(objUsers.Fields(6).Value), "", objUsers.Fields(6).Value)
        strAns1 = IIf(IsNull(objUsers.Fields(10).Value), "", objUsers.Fields(10).Value)
        strAns2 = IIf(IsNull(objUsers.Fields(11).Value), "", objUsers.Fields(11).Value)
        strAns3 = IIf(IsNull(objUsers.Fields(12).Value), "", objUsers.Fields(12).Value)
        intID = IIf(IsNull(objUsers.Fields(0).Value), "", objUsers.Fields(0).Value)
    End If

     cmdUpdate.Enabled = True
    cmdAdd.Enabled = False

End If

End Sub
Private Function pfblnNotInput() As Boolean

         If txtName.Text = "" Then
            txtName.SetFocus
            pfblnNotInput = True
        ElseIf txtUserName.Text = "" Then
            txtUserName.SetFocus
            pfblnNotInput = True
        ElseIf txtPassword.Text = "" Then
            txtPassword.SetFocus
            pfblnNotInput = True
        ElseIf cboAccessType.Text = "" Then
            cboAccessType.SetFocus
            pfblnNotInput = True
        ElseIf cboQuestion1.Text = "" Then
            cboQuestion1.SetFocus
            pfblnNotInput = True
        ElseIf cboQuestion2.Text = "" Then
            cboQuestion2.SetFocus
            pfblnNotInput = True
        ElseIf cboQuestion3.Text = "" Then
            cboQuestion3.SetFocus
            pfblnNotInput = True
        End If
 

End Function
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



Private Sub txtSearch_Change()
Call psubGetUsers
End Sub
Private Sub psubGetUsers()
    Dim objUsers As Object
    strSQL = ""
    strSQL = strSQL & "SELECT * FROM users"
    If txtSearch.Text <> "" Then
            strSQL = strSQL & " Where fullName like '%" & txtSearch.Text & "%'"
    End If
  Set objUsers = clsConnect.GetRecordSet(strSQL)
  Call psubLoadFlexGrid(objUsers)
End Sub
