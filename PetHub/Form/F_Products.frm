VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_Products 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Products"
   ClientHeight    =   6060
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5910
   Icon            =   "F_Products.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6060
   ScaleWidth      =   5910
   StartUpPosition =   1  'CenterOwner
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
      Left            =   2445
      TabIndex        =   1
      Top             =   180
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
      Left            =   2430
      TabIndex        =   0
      Top             =   4770
      Width           =   3330
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   4065
      Left            =   135
      TabIndex        =   2
      Top             =   630
      Width           =   5640
      _ExtentX        =   9948
      _ExtentY        =   7170
      _Version        =   393216
      FixedCols       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin OsenXPCntrl.OsenXPButton cmdDelete 
      Height          =   495
      Left            =   4275
      TabIndex        =   3
      Top             =   5400
      Width           =   1500
      _ExtentX        =   2646
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
      MICON           =   "F_Products.frx":10CA
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdSave 
      Height          =   495
      Left            =   2205
      TabIndex        =   4
      Top             =   5415
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Save"
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
      MICON           =   "F_Products.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdAddNew 
      Height          =   495
      Left            =   135
      TabIndex        =   5
      Top             =   5415
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Add New"
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
      MICON           =   "F_Products.frx":1102
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Search :"
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
      TabIndex        =   7
      Top             =   180
      Width           =   2265
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
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
      Height          =   345
      Left            =   135
      TabIndex        =   6
      Top             =   4770
      Width           =   2265
   End
   Begin VB.Image Image1 
      Height          =   6090
      Left            =   0
      Picture         =   "F_Products.frx":111E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   5910
   End
End
Attribute VB_Name = "F_Products"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intID As Integer
Dim strOldName As String

Private Sub cmdAddNew_Click()
    Call psubClear
End Sub

Private Sub psubClear()
    txtName.Text = ""
       txtName.SetFocus
       intID = 0
       strOldName = ""
       cmdSave.Caption = "&Save"
       cmdDelete.Caption = "&Clear"
      cmdAddNew.Enabled = False
End Sub

Private Sub cmdDelete_Click()
If intID = 0 Then
  Call psubClear
Else
     If MsgBox("Are you sure you want to delete this products ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        strSQL = ""
        strSQL = strSQL & " delete from products"
        strSQL = strSQL & " Where id=" & intID
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "Products deleted successfully.", vbInformation, SystemTitle
        Call psubClear
        Call psubGetData
     
    End If
  End If
End Sub

Private Function pfBlnAlreadyExist(blnUpdate As Boolean) As Boolean
  Dim objAlreadyExist As Object
        strSQL = ""
        strSQL = strSQL & " select * from  products where name =" & pfstrQuote(txtName.Text)
        If blnUpdate Then
        
        strSQL = strSQL & " and name <>" & pfstrQuote(strOldName)
        End If
        Set objAlreadyExist = clsConnect.GetRecordSet(strSQL)
        
        If Not objAlreadyExist.EOF Then
            pfBlnAlreadyExist = True
            txtName.SetFocus
            MsgBox "Products already exist.", vbCritical, SystemTitle
            Exit Function
        End If
End Function
Private Sub cmdSave_Click()
 
    If pfblnNotInput Then Exit Sub
    
    If intID = 0 Then
    If pfBlnAlreadyExist(False) Then Exit Sub
        If MsgBox("Are you sure you want to add this Products ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
            strSQL = ""
            strSQL = strSQL & " Insert into Products"
            strSQL = strSQL & " (name)"
            strSQL = strSQL & " values ( " & pfstrQuote(txtName.Text) & ")"
            
            clsConnect.DBConnect.Execute (strSQL)
            MsgBox "Products added successfully.", vbInformation, SystemTitle
            
            Call psubClear
            Call psubGetData
        End If
    Else
        If pfBlnAlreadyExist(True) Then Exit Sub
        If MsgBox("Are you sure you want to update this Products ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
            strSQL = ""
            strSQL = strSQL & " Update Products"
            strSQL = strSQL & " SET name=" & pfstrQuote(txtName.Text)
            strSQL = strSQL & " where id=" & intID
            
            clsConnect.DBConnect.Execute (strSQL)
            MsgBox "Products update successfully.", vbInformation, SystemTitle
            
            Call psubClear
            Call psubGetData
        End If
    End If
End Sub
Private Function pfblnNotInput() As Boolean
       If txtName.Text = "" Then
            txtName.SetFocus
            pfblnNotInput = True
        End If
End Function
Private Sub Form_Load()
Dim objData As Object
    strSQL = ""
    strSQL = strSQL & "SELECT * FROM Products"
    
  Set objData = clsConnect.GetRecordSet(strSQL)
  Call psubLoadFlexGrid(objData)
End Sub


Private Sub psubLoadFlexGrid(objData As Object)
    Dim a As Integer

    With MSFlexGrid1
        .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "ID", "Name")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = Choose(a + 1, 1780, 3500)
                .RowHeight(0) = 400
                .CellFontBold = True
      Next a
  
        Do While Not objData.EOF
        
                .Rows = .Rows + 1
                .TextMatrix(.Rows - 1, 0) = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
                .TextMatrix(.Rows - 1, 1) = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
               
              
           
            objData.MoveNext
        Loop
    
    End With
    

End Sub



Private Sub MSFlexGrid1_DblClick()
Dim objData As Object
     If MSFlexGrid1.Row <> 0 Then
        strSQL = ""
        strSQL = strSQL & "SELECT * FROM Products"
        strSQL = strSQL & " Where ID = " & MSFlexGrid1.TextMatrix(MSFlexGrid1.Row, 0)
        Set objData = clsConnect.GetRecordSet(strSQL)
    
        If Not objData.EOF Then
            intID = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
            txtName.Text = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
          
                strOldName = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
        End If
    
        cmdAddNew.Enabled = True
        cmdSave.Caption = "&Update"
        cmdDelete.Caption = "&Delete"
     End If
End Sub

Private Sub txtPrice_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
End Sub

Private Sub txtSearch_Change()
  Call psubGetData
End Sub
Private Sub psubGetData()
    Dim objData As Object
    strSQL = ""
    strSQL = strSQL & "SELECT * from Products"
    If txtSearch.Text <> "" Then
    strSQL = strSQL & " Where name like '%" & txtSearch.Text & "%'"
    End If
    
  Set objData = clsConnect.GetRecordSet(strSQL)
  Call psubLoadFlexGrid(objData)
End Sub



