VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_Reports 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Reports"
   ClientHeight    =   7410
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9765
   Icon            =   "F_Reports.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7410
   ScaleWidth      =   9765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtFromTo 
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
      Left            =   5355
      TabIndex        =   10
      Top             =   180
      Width           =   2000
   End
   Begin VB.TextBox txtDateFrom 
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
      Left            =   1665
      TabIndex        =   8
      Top             =   180
      Width           =   2000
   End
   Begin VB.TextBox txtIncome 
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
      Left            =   7957
      Locked          =   -1  'True
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1500
   End
   Begin VB.TextBox txtCapital 
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
      Left            =   4897
      Locked          =   -1  'True
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1500
   End
   Begin VB.TextBox txtTotalSales 
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
      Left            =   1837
      Locked          =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1500
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   5775
      Left            =   135
      TabIndex        =   0
      Top             =   630
      Width           =   9510
      _ExtentX        =   16775
      _ExtentY        =   10186
      _Version        =   393216
      Cols            =   7
      FixedCols       =   0
      HighLight       =   2
      SelectionMode   =   1
      AllowUserResizing=   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin OsenXPCntrl.OsenXPButton cmdPrint 
      Height          =   495
      Left            =   7605
      TabIndex        =   7
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
      MICON           =   "F_Reports.frx":10CA
      PICN            =   "F_Reports.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Date To :"
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
      Left            =   3825
      TabIndex        =   11
      Top             =   180
      Width           =   1500
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Date From :"
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
      Width           =   1500
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Income :"
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
      Left            =   6427
      TabIndex        =   6
      Top             =   6660
      Width           =   1500
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Capital :"
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
      Left            =   3367
      TabIndex        =   3
      Top             =   6660
      Width           =   1500
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Total Sales :"
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
      Left            =   307
      TabIndex        =   1
      Top             =   6660
      Width           =   1500
   End
End
Attribute VB_Name = "F_Reports"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub psubLoadFlexGrid(objData As Object)
    Dim a As Integer
    Dim intTotalSales As Double
    With MSFlexGrid1
        .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "PRINT", "INVOICE NO", "CASHIER", "TOTAL PRICE", "CASH", "CHANGE", "TRANSACTION DATE")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = Choose(a + 1, 1000, 2000, 2000, 1500, 1500, 1500, 2000, 1500)
                .RowHeight(0) = 400
                .CellFontBold = True

      Next a
  
        Do While Not objData.EOF

                .Rows = .Rows + 1
                .TextMatrix(.Rows - 1, 1) = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
                .TextMatrix(.Rows - 1, 2) = IIf(IsNull(objData.Fields(4).Value), "", objData.Fields(4).Value)
                .TextMatrix(.Rows - 1, 3) = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
                .TextMatrix(.Rows - 1, 4) = IIf(IsNull(objData.Fields(2).Value), "", objData.Fields(2).Value)
                .TextMatrix(.Rows - 1, 5) = IIf(IsNull(objData.Fields(3).Value), "", objData.Fields(3).Value)
                .TextMatrix(.Rows - 1, 6) = IIf(IsNull(objData.Fields(5).Value), "", objData.Fields(5).Value)
                
            intTotalSales = intTotalSales + IIf(IsNull(objData.Fields(1).Value), 0, objData.Fields(1).Value)
               
            objData.MoveNext
        Loop
        txtTotalSales.Text = intTotalSales
    
    End With
    

End Sub

Private Sub cmdPrint_Click()

    DT_Reciept.Print
End Sub

Private Sub Form_Load()
    Dim objData As Object
    strSQL = ""
    strSQL = strSQL & " SELECT * From H_sales"
    strSQL = strSQL & " where DATE_FORMAT(transDate,'%Y%m%d')=DATE_FORMAT(now(),'%Y%m%d')"
    
    Set objData = clsConnect.GetRecordSet(strSQL)

  Call psubLoadFlexGrid(objData)
End Sub
