VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_Sales 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sales"
   ClientHeight    =   7560
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12405
   Icon            =   "F_Sales.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   12405
   StartUpPosition =   1  'CenterOwner
   Begin VB.CheckBox chkGrooming 
      Caption         =   "Grooming"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   1575
      TabIndex        =   17
      Top             =   360
      Width           =   1275
   End
   Begin VB.ComboBox cboItem 
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
      Left            =   495
      TabIndex        =   16
      Top             =   630
      Width           =   3330
   End
   Begin VB.TextBox txtChange 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000010&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   495
      Locked          =   -1  'True
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   4815
      Width           =   3330
   End
   Begin VB.TextBox txtCash 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   495
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   3735
      Width           =   3330
   End
   Begin VB.TextBox txtPrice 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000002&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   495
      Locked          =   -1  'True
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   2610
      Width           =   3330
   End
   Begin VB.TextBox txtQTY 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   495
      TabIndex        =   1
      Top             =   1485
      Width           =   3330
   End
   Begin VB.TextBox txtTotalAll 
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
      Left            =   10575
      Locked          =   -1  'True
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1500
   End
   Begin VB.TextBox txtTotalPrice 
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
      Left            =   9090
      Locked          =   -1  'True
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1500
   End
   Begin VB.TextBox txtTotalQTY 
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
      Left            =   8100
      Locked          =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   6660
      Width           =   1000
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   6180
      Left            =   4410
      TabIndex        =   0
      Top             =   270
      Width           =   7770
      _ExtentX        =   13705
      _ExtentY        =   10901
      _Version        =   393216
      Cols            =   6
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
   Begin OsenXPCntrl.OsenXPButton cmdSumbit 
      Height          =   750
      Left            =   495
      TabIndex        =   14
      Top             =   5625
      Width           =   3330
      _ExtentX        =   5874
      _ExtentY        =   1323
      BTYPE           =   4
      TX              =   "&Submit Payment"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
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
      MICON           =   "F_Sales.frx":10CA
      PICN            =   "F_Sales.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdVoid 
      Height          =   495
      Left            =   495
      TabIndex        =   15
      Top             =   6525
      Width           =   3330
      _ExtentX        =   5874
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Void"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
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
      MICON           =   "F_Sales.frx":19C0
      PICN            =   "F_Sales.frx":19DC
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CHANGE :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   225
      TabIndex        =   12
      Top             =   4455
      Width           =   1290
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CASH :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   225
      TabIndex        =   11
      Top             =   3375
      Width           =   900
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL PRICE :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   225
      TabIndex        =   9
      Top             =   2250
      Width           =   1875
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "QTY :"
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
      Left            =   180
      TabIndex        =   8
      Top             =   1125
      Width           =   600
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Select Item :"
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
      Left            =   180
      TabIndex        =   7
      Top             =   315
      Width           =   1290
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "TOTAL"
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
      Left            =   4410
      TabIndex        =   4
      Top             =   6660
      Width           =   3705
   End
End
Attribute VB_Name = "F_Sales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim objStocks As Object
Private Sub psubClearFlex()
    Dim a As Integer
    
    With MSFlexGrid1
      .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "ITEMID", "ITEMS", "UNIT", "QTY", "PRICE", "TOTAL PRICE")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = Choose(a + 1, 0, 2600, 1000, 1000, 1500, 1500)
                .RowHeight(0) = 500
                .CellFontBold = True

      Next a
        .ColAlignment(1) = flexAlignLeftCenter
  
        txtTotalQTY.Text = 0
        txtTotalPrice.Text = 0
        txtTotalAll = 0
        
    
    End With
    

End Sub

Private Sub chkGrooming_Click()
  Dim objData As Object
    If chkGrooming.Value = 1 Then
  
    strSQL = ""
    strSQL = strSQL & " SELECT * FROM grooming"
      
  
   Else
    strSQL = ""
   strSQL = strSQL & " SELECT * FROM STOCKS where QTY<>0"
   
   
    End If
    Set objData = clsConnect.GetRecordSet(strSQL)
     Call psubLoadCombo(objData)
End Sub

Private Sub Form_Load()

   Call psubClearFlex
   strSQL = ""
   strSQL = strSQL & " SELECT * FROM STOCKS where QTY<>0"
   
   Set objStocks = clsConnect.GetRecordSet(strSQL)
   
   Call psubLoadCombo(objStocks)
   txtPrice.Text = 0
   txtCash.Text = 0
   txtChange.Text = 0
End Sub
Private Sub psubLoadCombo(objData As Object)
    With objData
        .MoveFirst
        cboItem.Clear
        Do While Not .EOF
            cboItem.AddItem .Fields(1).Value
            .MoveNext
        Loop
    End With
End Sub

Private Function pfGetItemName(intID As Integer) As String
 With objStocks
    .MoveFirst
    Do While Not .EOF
    If intID = .Fields(0).Value Then
        pfGetQuestionName = .Fields(1).Value
    End If
    .MoveNext
    Loop
 End With
End Function
Private Function pfGetItemID(strValue As String) As Integer
 With objStocks
    .MoveFirst
    Do While Not .EOF
    If strValue = .Fields(1).Value Then
        pfGetQuestionID = .Fields(0).Value
    End If
    .MoveNext
    Loop
 End With
End Function


Private Sub txtCash_Change()
     txtChange.Text = Val(txtCash.Text) - Val(txtPrice.Text)
End Sub

Private Sub txtCash_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
   
End Sub

Private Sub txtQTY_KeyPress(KeyAscii As Integer)
Dim objData As Object
    If KeyAscii = 13 Then
        If cboItem.Text = "" Then
            cboItem.SetFocus
        ElseIf Val(txtQTY) = 0 Then
        txtQTY.SetFocus
        
        Else
        If chkGrooming.Value = 1 Then
        strSQL = ""
        strSQL = strSQL & " SELECT * FROM grooming"
        strSQL = strSQL & " where description=" & pfstrQuote(cboItem.Text)
        Else
        
        strSQL = ""
        strSQL = strSQL & " SELECT * FROM STOCKS"
        strSQL = strSQL & " where name=" & pfstrQuote(cboItem.Text)
        strSQL = strSQL & " and qty>=" & txtQTY.Text
        End If
        Set objData = clsConnect.GetRecordSet(strSQL)
        
        
            If Not objData.EOF Then
                With MSFlexGrid1
                    .Rows = .Rows + 1
                    .RowHeight(.Rows - 1) = 350
                    .TextMatrix(.Rows - 1, 0) = IIf(IsNull(objData.Fields(0).Value), 0, objData.Fields(0).Value)
                    .TextMatrix(.Rows - 1, 1) = cboItem.Text
                    .TextMatrix(.Rows - 1, 3) = Val(txtQTY.Text)
                     If chkGrooming.Value = 1 Then
                      .TextMatrix(.Rows - 1, 2) = "-"
                      .TextMatrix(.Rows - 1, 4) = IIf(IsNull(objData.Fields(2).Value), 0, objData.Fields(2).Value)
                     Else
                     .TextMatrix(.Rows - 1, 2) = IIf(IsNull(objData.Fields(7).Value), "", objData.Fields(7).Value)
                      .TextMatrix(.Rows - 1, 4) = IIf(IsNull(objData.Fields(8).Value), 0, objData.Fields(8).Value)
                     End If
                    .TextMatrix(.Rows - 1, 5) = Val(txtQTY.Text) * Val(.TextMatrix(.Rows - 1, 4))
                    
                End With
                txtQTY.Text = ""
                cboItem.Text = ""
                Call psubCountTotal
            Else
                MsgBox "Stock not fullfil quantity needs.", vbCritical, SystemTitle
                txtQTY.SetFocus
            End If
     
        
        End If
        
    Else
     KeyAscii = pfNumberOnly(KeyAscii)
    End If
End Sub

Private Sub psubCountTotal()
Dim i As Integer
Dim intTotalQTY, intTotalPrice, intTotalAll As Double
  With MSFlexGrid1
        For i = 1 To .Rows - 1
            intTotalQTY = intTotalQTY + Val(.TextMatrix(i, 3))
            intTotalPrice = intTotalPrice + Val(.TextMatrix(i, 4))
            intTotalAll = intTotalAll + Val(.TextMatrix(i, 5))
        Next i
  End With
  txtTotalQTY.Text = intTotalQTY
  txtTotalAll.Text = intTotalAll
  txtTotalPrice.Text = intTotalPrice
  txtPrice.Text = txtTotalAll
  
End Sub

