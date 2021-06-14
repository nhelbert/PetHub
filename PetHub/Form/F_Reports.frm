VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
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
   OLEDropMode     =   1  'Manual
   ScaleHeight     =   7410
   ScaleWidth      =   9765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSComCtl2.DTPicker dtFrom 
      Height          =   330
      Left            =   1665
      TabIndex        =   10
      Top             =   180
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   582
      _Version        =   393216
      Format          =   74579969
      CurrentDate     =   44360
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
   Begin MSComCtl2.DTPicker dtTo 
      Height          =   330
      Left            =   5355
      TabIndex        =   11
      Top             =   180
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   582
      _Version        =   393216
      Format          =   74645505
      CurrentDate     =   44360
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
      TabIndex        =   9
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
      TabIndex        =   8
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
   Begin VB.Image Image1 
      Height          =   7440
      Left            =   0
      Picture         =   "F_Reports.frx":1682
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9780
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
                .TextMatrix(.Rows - 1, 0) = "PRINT"
                .Row = .Rows - 1
                .Col = 0
                .CellTextStyle = flexTextRaised
                .TextMatrix(.Rows - 1, 1) = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
                .TextMatrix(.Rows - 1, 2) = IIf(IsNull(objData.Fields(4).Value), "", objData.Fields(4).Value)
                .TextMatrix(.Rows - 1, 3) = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
                .TextMatrix(.Rows - 1, 4) = IIf(IsNull(objData.Fields(2).Value), "", objData.Fields(2).Value)
                .TextMatrix(.Rows - 1, 5) = IIf(IsNull(objData.Fields(3).Value), "", objData.Fields(3).Value)
                .TextMatrix(.Rows - 1, 6) = IIf(IsNull(objData.Fields(5).Value), "", objData.Fields(5).Value)
                
           
               
            objData.MoveNext
        Loop
   
    End With
    

End Sub
Private Sub psubGetTotals()
Dim objTotal As Object
     txtTotalSales.Text = 0
     txtCapital.Text = 0
     txtIncome.Text = 0
    
    strSQL = ""
    strSQL = strSQL & "SELECT sum(b.TotalPrice) AS totalPrice ,sum(B.QTY * c.ActPrice) AS totalCapital FROM h_sales a"
    strSQL = strSQL & " INNER JOIN sales b"
    strSQL = strSQL & " ON a.InvoiceNo=b.InvoiceNo"
    strSQL = strSQL & " INNER JOIN stocks c"
    strSQL = strSQL & " ON b.ItemId=c.ItemId"
    strSQL = strSQL & " where DATE_FORMAT(a.transDate,'%Y%m%d') between DATE_FORMAT(" & pfstrQuote(dtFrom.Value) & ",'%Y%m%d')"
    strSQL = strSQL & " and DATE_FORMAT(" & pfstrQuote(dtTo.Value) & ",'%Y%m%d')"
    Set objTotal = clsConnect.GetRecordSet(strSQL)
    If Not objTotal.EOF Then
        txtTotalSales.Text = IIf(IsNull(objTotal.Fields(0).Value), 0, objTotal.Fields(0).Value)
        txtCapital.Text = IIf(IsNull(objTotal.Fields(1).Value), 0, objTotal.Fields(1).Value)
        txtIncome.Text = Val(txtTotalSales.Text) - Val(txtCapital.Text)
    End If
End Sub

Private Sub cmdPrint_Click()
    strSQL = ""
    strSQL = strSQL & " SELECT * From H_sales"
    strSQL = strSQL & " where DATE_FORMAT(transDate,'%Y%m%d') between DATE_FORMAT(" & pfstrQuote(dtFrom.Value) & ",'%Y%m%d')"
    strSQL = strSQL & " and DATE_FORMAT(" & pfstrQuote(dtTo.Value) & ",'%Y%m%d')"
    'DT_Datasource.Commands("Reciept").CommandText = strSQL
   Set DT_Reciept.DataSource = clsConnect.GetRecordSet(strSQL)
    DT_Reciept.Sections(1).Controls("lblFrom").Caption = Format(dtFrom.Value, "YYYY-MM-DD")
    DT_Reciept.Sections(1).Controls("lblTo").Caption = Format(dtTo.Value, "YYYY-MM-DD")
'
'    DT_Reciept.Sections("Section5").Controls("lblTotal1").Caption = txtTotalSales.Text
'    DT_Reciept.Sections("Section5").Controls("lblCapital1").Caption = txtCapital.Text
'    DT_Reciept.Sections("Section5").Controls("lblIncome1").Caption = txtIncome.Text

    DT_Reciept.Sections("Section3").Controls("lblTotal").Caption = txtTotalSales.Text
    DT_Reciept.Sections("Section3").Controls("lblCapital").Caption = txtCapital.Text
    DT_Reciept.Sections("Section3").Controls("lblIncome").Caption = txtIncome.Text
    If MsgBox("Print Preview ?", vbQuestion + vbYesNo, SystemTitle) = vbYes Then
      DT_Reciept.Show vbModal
    Else
        DT_Reciept.PrintReport False
    End If
    Set DT_Datasource = Nothing
  
End Sub

Private Sub psubFilter()
   Dim objData As Object
    strSQL = ""
    strSQL = strSQL & " SELECT * From H_sales"
    strSQL = strSQL & " where DATE_FORMAT(transDate,'%Y%m%d') between DATE_FORMAT(" & pfstrQuote(dtFrom.Value) & ",'%Y%m%d')"
    strSQL = strSQL & " and DATE_FORMAT(" & pfstrQuote(dtTo.Value) & ",'%Y%m%d')"
    Set objData = clsConnect.GetRecordSet(strSQL)
  
  Call psubLoadFlexGrid(objData)
  Call psubGetTotals
End Sub

Private Sub dtFrom_Change()
      Call psubFilter
End Sub

Private Sub dtTo_Change()
    Call psubFilter
End Sub

Private Sub Form_Load()
 
    dtFrom.Value = Now()
    dtTo.Value = Now()
    Call psubFilter

End Sub

Private Sub MSFlexGrid1_Click()
    With MSFlexGrid1
        If .RowSel > 0 And .Col = 0 Then
    strSQL = ""
    strSQL = strSQL & " SELECT CASE when B.Name IS NULL  THEN C.Description ELSE B.Name END AS Name ,b.Unit,a.QTY,a.Price,a.TotalPrice FROM sales a"
    strSQL = strSQL & " LEFT JOIN stocks b ON a.ItemId=b.ItemId"
    strSQL = strSQL & " LEFT JOIN grooming c ON a.ItemId=c.GroomID"
    strSQL = strSQL & " WHERE a.InvoiceNo=" & pfstrQuote(.TextMatrix(.RowSel, 1))
    
    'DT_Datasource.Commands("Reciept1").CommandText = strSQL
    Set DT_Reciept1.DataSource = clsConnect.GetRecordSet(strSQL)
    DT_Reciept1.Sections("Section2").Controls("lblTransactionDate").Caption = "Date. : " & .TextMatrix(.RowSel, 6)
    DT_Reciept1.Sections("Section2").Controls("lblCashier").Caption = "Cashier. : " & .TextMatrix(.RowSel, 2)
    DT_Reciept1.Sections("Section2").Controls("lblInvoice").Caption = "Invoice No. : " & .TextMatrix(.RowSel, 1)

    DT_Reciept1.Sections("Section3").Controls("lblTotal").Caption = .TextMatrix(.RowSel, 3)
    DT_Reciept1.Sections("Section3").Controls("lblCash").Caption = .TextMatrix(.RowSel, 4)
    DT_Reciept1.Sections("Section3").Controls("lblChange").Caption = .TextMatrix(.RowSel, 5)
    If MsgBox("Print Preview ?", vbQuestion + vbYesNo, SystemTitle) = vbYes Then
      DT_Reciept1.Show vbModal
    Else
        DT_Reciept1.PrintReport False
    End If
    Set DT_Datasource = Nothing
        End If
    End With
End Sub
