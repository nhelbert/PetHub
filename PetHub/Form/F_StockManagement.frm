VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_StockManagement 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stock Management"
   ClientHeight    =   7560
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14910
   Icon            =   "F_StockManagement.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   14910
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cboStatus 
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
      Left            =   2970
      TabIndex        =   3
      Top             =   180
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
      Left            =   8910
      TabIndex        =   1
      Top             =   180
      Width           =   3330
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   6090
      Left            =   135
      TabIndex        =   0
      Top             =   630
      Width           =   14670
      _ExtentX        =   25876
      _ExtentY        =   10742
      _Version        =   393216
      Cols            =   13
      FixedCols       =   0
      HighLight       =   2
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin OsenXPCntrl.OsenXPButton cmdPrint 
      Height          =   495
      Left            =   12780
      TabIndex        =   4
      Top             =   90
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Print"
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
      MICON           =   "F_StockManagement.frx":10CA
      PICN            =   "F_StockManagement.frx":10E6
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
      Left            =   12780
      TabIndex        =   6
      Top             =   6885
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
      MICON           =   "F_StockManagement.frx":1682
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label lblLowStock 
      Alignment       =   2  'Center
      BackColor       =   &H000040C0&
      BorderStyle     =   1  'Fixed Single
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
      Left            =   6930
      TabIndex        =   15
      Top             =   6930
      Width           =   465
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Over Stock"
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
      Left            =   9375
      TabIndex        =   14
      Top             =   6930
      Width           =   1500
   End
   Begin VB.Label lblOverStock 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
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
      Left            =   8895
      TabIndex        =   13
      Top             =   6930
      Width           =   465
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Low Stock"
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
      Left            =   7380
      TabIndex        =   12
      Top             =   6930
      Width           =   1500
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "On Stock"
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
      Left            =   5430
      TabIndex        =   11
      Top             =   6930
      Width           =   1500
   End
   Begin VB.Label lblOnStock 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
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
      Left            =   4950
      TabIndex        =   10
      Top             =   6930
      Width           =   465
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Expired"
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
      Left            =   3435
      TabIndex        =   9
      Top             =   6930
      Width           =   1500
   End
   Begin VB.Label lblExpired 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
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
      Left            =   2970
      TabIndex        =   8
      Top             =   6930
      Width           =   465
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Legends :"
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
      TabIndex        =   7
      Top             =   6930
      Width           =   2805
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Filter Status :"
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
      TabIndex        =   5
      Top             =   180
      Width           =   2805
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
      Left            =   6615
      TabIndex        =   2
      Top             =   180
      Width           =   2265
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   0
      Picture         =   "F_StockManagement.frx":169E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14910
   End
End
Attribute VB_Name = "F_StockManagement"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub psubLoadFlexGrid(objData As Object)
    Dim a As Integer
    With MSFlexGrid1
        .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "ITEM ID", "NAME", "PRODUCT", "BRAND", "EXPIRE DATE", "MAX", "MIN", "QTY", "UNIT", "PRICE", "ACTUAL PRICE", "REMARKS", "ENTRY DATE")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = Choose(a + 1, 2000, 2000, 1500, 1500, 1500, 1000, 1000, 1000, 1000, 1000, 1500, 2000, 2000)
                .RowHeight(0) = 400
                '.CellFontBold = True
      Next a
  
        Do While Not objData.EOF

                .Rows = .Rows + 1
                .Row = .Rows - 1
                .Col = 0
                
                Select Case objData.Fields(11).Value
                    Case "Expired"
                        .CellBackColor = vbRed
                    Case "Low Stock"
                        .CellBackColor = vbGrayText
                    Case "Over Stock"
                        .CellBackColor = vbGreen
                    Case Else
                        .CellBackColor = vbWhite
                End Select
                For a = 0 To .Cols - 1
                     .TextMatrix(.Rows - 1, a) = IIf(IsNull(objData.Fields(a).Value), "", objData.Fields(a).Value)
                Next a
  
               



            objData.MoveNext
        Loop
    
    End With
    

End Sub


Private Sub cboStatus_Click()
    Call psubGetData
End Sub

Private Sub cmdAdd_Click()
 F_StockEditAdd.blnAdd = True
    F_StockEditAdd.Show vbModal
End Sub

Private Sub Form_Load()
Dim objData As Object
    strSQL = ""
    strSQL = strSQL & " SELECT ItemId,Name,productname,Brand,ExDate,Max,Min,QTY,Unit,Price,"
    strSQL = strSQL & " ActPrice,case when ExDate<=DATE_FORMAT(now(), '%Y-%m-%d') then 'Expired' when QTY<=Min then 'Low Stock' when QTY>Max then 'Over Stock' else 'OK' end as Remarks,EntDate FROM stocks"
  Set objData = clsConnect.GetRecordSet(strSQL)

  Call psubLoadFlexGrid(objData)
  
  cboStatus.AddItem "All"
  cboStatus.AddItem "Expired"
  cboStatus.AddItem "On Stock"
  cboStatus.AddItem "Low Stock"
  cboStatus.AddItem "Over Stock"
  cboStatus.ListIndex = 0
  lblExpired.BackColor = vbRed
  lblOnStock.BackColor = vbWhite
  lblLowStock.BackColor = vbGrayText
  lblOverStock.BackColor = vbGreen

End Sub



Private Sub MSFlexGrid1_DblClick()
If MSFlexGrid1.Row <> 0 Then


    strSQL = ""
    strSQL = strSQL & " SELECT ItemId,Name,productname,Brand,ExDate,Max,Min,QTY,Unit,Price,"
    strSQL = strSQL & " ActPrice,case when ExDate<=DATE_FORMAT(now(), '%Y-%m-%d') then 'Expired' when QTY<=Min then 'Low Stock' when QTY>Max then 'Over Stock' else 'OK' end as Remarks,EntDate FROM stocks"
    strSQL = strSQL & " Where itemid = " & pfstrQuote(MSFlexGrid1.TextMatrix(MSFlexGrid1.Row, 0))
    Set objData = clsConnect.GetRecordSet(strSQL)

    Set F_StockEditAdd.objData = objData
    F_StockEditAdd.blnAdd = False
    F_StockEditAdd.Show vbModal

End If
End Sub

Private Sub txtSearch_Change()
Call psubGetData
End Sub
Public Sub psubGetData()
    Dim objData As Object
    strSQL = ""
      strSQL = strSQL & " SELECT ItemId,Name,productname,Brand,ExDate,Max,Min,QTY,Unit,Price,"
    strSQL = strSQL & " ActPrice,case when ExDate<=DATE_FORMAT(now(), '%Y-%m-%d') then 'Expired' when QTY<=Min then 'Low Stock' when QTY>Max then 'Over Stock' else 'OK' end as Remarks,EntDate FROM stocks"
     strSQL = strSQL & " Where itemid is not null"
    If txtSearch.Text <> "" Then
            strSQL = strSQL & " and name like '%" & txtSearch.Text & "%'"
    End If
    Select Case cboStatus.Text
    Case "Expired"
        strSQL = strSQL & " and ExDate <= now()"
    Case "On Stock"
        strSQL = strSQL & " and qty > min and qty <=max and  ExDate > DATE_FORMAT(now(), '%Y-%m-%d')"
    Case "Low Stock"
        strSQL = strSQL & " and qty <= min"
     Case "Over Stock"
        strSQL = strSQL & " and qty > max"
    End Select
  Set objData = clsConnect.GetRecordSet(strSQL)

  Call psubLoadFlexGrid(objData)

End Sub

