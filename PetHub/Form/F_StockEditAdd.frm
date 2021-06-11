VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_StockEditAdd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add New Stock"
   ClientHeight    =   5550
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5910
   Icon            =   "F_StockEditAdd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5550
   ScaleWidth      =   5910
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtExDate 
      Alignment       =   1  'Right Justify
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
      Left            =   2415
      TabIndex        =   21
      Top             =   1620
      Width           =   3330
   End
   Begin VB.ComboBox cboBrand 
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
      TabIndex        =   1
      Top             =   1170
      Width           =   3330
   End
   Begin VB.TextBox txtActPrice 
      Alignment       =   1  'Right Justify
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
      Left            =   2370
      TabIndex        =   6
      Top             =   4320
      Width           =   3330
   End
   Begin VB.TextBox txtPrice 
      Alignment       =   1  'Right Justify
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
      Left            =   2370
      TabIndex        =   5
      Top             =   3870
      Width           =   3330
   End
   Begin VB.TextBox txtQTY 
      Alignment       =   1  'Right Justify
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
      Left            =   2385
      TabIndex        =   4
      Top             =   2970
      Width           =   3330
   End
   Begin VB.TextBox txtMinQTY 
      Alignment       =   1  'Right Justify
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
      Left            =   2385
      TabIndex        =   3
      Top             =   2520
      Width           =   3330
   End
   Begin VB.TextBox txtMaxQTY 
      Alignment       =   1  'Right Justify
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
      Left            =   2415
      TabIndex        =   2
      Top             =   2070
      Width           =   3330
   End
   Begin VB.TextBox txtItemName 
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
      Top             =   720
      Width           =   3330
   End
   Begin VB.TextBox txtItemID 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000010&
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
      Locked          =   -1  'True
      TabIndex        =   20
      TabStop         =   0   'False
      Text            =   "Generated when save"
      Top             =   270
      Width           =   3330
   End
   Begin VB.ComboBox cboUnit 
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
      Left            =   2385
      TabIndex        =   9
      Top             =   3420
      Width           =   3330
   End
   Begin OsenXPCntrl.OsenXPButton cmdSave 
      Height          =   495
      Left            =   3690
      TabIndex        =   7
      Top             =   4905
      Width           =   1995
      _ExtentX        =   3519
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
      MICON           =   "F_StockEditAdd.frx":10CA
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
      Left            =   90
      TabIndex        =   8
      Top             =   4905
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Close"
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
      MICON           =   "F_StockEditAdd.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Actual Price :"
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
      Left            =   90
      TabIndex        =   19
      Top             =   4320
      Width           =   2265
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Price :"
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
      Left            =   90
      TabIndex        =   18
      Top             =   3870
      Width           =   2265
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Min QTY :"
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
      Left            =   105
      TabIndex        =   17
      Top             =   2520
      Width           =   2265
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Unit :"
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
      Left            =   105
      TabIndex        =   16
      Top             =   3420
      Width           =   2265
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
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
      Height          =   345
      Left            =   105
      TabIndex        =   15
      Top             =   2970
      Width           =   2265
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Max QTY :"
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
      TabIndex        =   14
      Top             =   2070
      Width           =   2265
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Expired Date :"
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
      TabIndex        =   13
      Top             =   1620
      Width           =   2265
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Item ID :"
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
      TabIndex        =   12
      Top             =   270
      Width           =   2265
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Brand :"
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
      TabIndex        =   11
      Top             =   1170
      Width           =   2265
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Item Name :"
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
      Top             =   720
      Width           =   2265
   End
End
Attribute VB_Name = "F_StockEditAdd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public objData As Object
Public blnAdd As Boolean
Private Sub psubClear()
    txtItemID.Text = "Generated when save"
    txtItemName.Text = ""
    cboBrand.Text = ""
    txtExDate.Text = ""
    txtMaxQTY.Text = ""
    txtMinQTY.Text = ""
    txtQTY.Text = ""
    txtPrice.Text = ""
    txtActPrice = ""
    F_StockEditAdd.Caption = "Add New Stock"
    cmdDelete.Caption = "&Close"
     Unload Me
End Sub

Private Sub cmdDelete_Click()
    If blnAdd Then
        psubClear
    Else
        If MsgBox("Are you sure you want to delete this item ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        strSQL = ""
        strSQL = strSQL & " delete from stocks"
        strSQL = strSQL & " Where itemid=" & pfstrQuote(txtItemID.Text)
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "Stock deleted successfully.", vbInformation, SystemTitle
        Call psubClear
        Call F_StockManagement.psubGetData
     
    End If
    End If
End Sub
Private Function pfblnNotInput() As Boolean

        If txtItemName.Text = "" Then
            txtItemName.SetFocus
            pfblnNotInput = True
        ElseIf cboBrand.Text = "" Then
            cboBrand.SetFocus
            pfblnNotInput = True
        ElseIf txtExDate.Text = "" Then
            txtExDate.SetFocus
            pfblnNotInput = True
            
        ElseIf txtMaxQTY.Text = "" Then
            txtMaxQTY.SetFocus
            pfblnNotInput = True
        ElseIf txtMinQTY.Text = "" Then
            txtMinQTY.SetFocus
            pfblnNotInput = True
        ElseIf txtQTY.Text = "" Then
            txtQTY.SetFocus
            pfblnNotInput = True
        ElseIf cboUnit.Text = "" Then
            cboUnit.SetFocus
            pfblnNotInput = True
        ElseIf txtPrice.Text = "" Then
            txtPrice.SetFocus
            pfblnNotInput = True
        ElseIf txtActPrice.Text = "" Then
            txtActPrice.SetFocus
            pfblnNotInput = True
        End If
 

End Function

Private Sub cmdSave_Click()
  If pfblnNotInput Then Exit Sub
   If blnAdd Then
        If MsgBox("Are you sure you want to add this item ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        Dim objItemName As Variant
        Dim i As Integer
        Dim strItemID As String
        objItemName = Split(txtItemName.Text, " ")
        
        For i = 0 To UBound(objItemName)
                strItemID = strItemID & UCase(Mid(objItemName(i), 1, 1))
        Next i
        
        strSQL = ""
        strSQL = strSQL & " Insert into stocks"
        strSQL = strSQL & " (itemID,name,brand,exdate,max,min,qty,unit,price,actprice)"
        strSQL = strSQL & " values (concat(" & pfstrQuote(strItemID) & ",DATE_FORMAT(now(), '%Y%m%d%H%i%s'))"
        strSQL = strSQL & "     ," & pfstrQuote(txtItemName.Text)
        strSQL = strSQL & "     ," & pfstrQuote(cboBrand.Text)
        strSQL = strSQL & "     ,now()" ' & pfstrQuote(txtExDate.Text)
        strSQL = strSQL & "     ," & txtMaxQTY.Text
        strSQL = strSQL & "     ," & txtMinQTY.Text
        strSQL = strSQL & "     ," & txtQTY.Text
        strSQL = strSQL & "     ," & pfstrQuote(cboUnit.Text)
        strSQL = strSQL & "     ," & txtPrice.Text
        strSQL = strSQL & "     ," & txtActPrice.Text & ")"
        
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "User added successfully.", vbInformation, SystemTitle
        
        Call psubClear
        Call F_StockManagement.psubGetData
     
    End If
   
   Else
  
    
    If MsgBox("Are you sure you want to update this item ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
        
        strSQL = ""
        strSQL = strSQL & " Update stocks"
        strSQL = strSQL & " Set name=" & pfstrQuote(txtItemName.Text)
        strSQL = strSQL & "     ,brand=" & pfstrQuote(cboBrand.Text)
        strSQL = strSQL & "     ,exdate=" & "now()"
        strSQL = strSQL & "     ,max=" & txtMaxQTY.Text
        strSQL = strSQL & "     ,min=" & txtMinQTY.Text
        strSQL = strSQL & "     ,qty=" & txtQTY.Text
        strSQL = strSQL & "     ,unit=" & pfstrQuote(cboUnit.Text)
        strSQL = strSQL & "     ,price=" & txtPrice
        strSQL = strSQL & "     ,actprice=" & txtActPrice
        
        strSQL = strSQL & " Where itemid=" & pfstrQuote(txtItemID)
        
        clsConnect.DBConnect.Execute (strSQL)
        MsgBox "Update stock successful.", vbInformation, SystemTitle
        Call psubClear
        Call F_StockManagement.psubGetData
        
     
    End If
End If
End Sub

Private Sub Form_Load()
Dim objBrand As Object
Dim objUnit As Object
    If Not blnAdd Then
      If Not objData.EOF Then
      
        txtItemID.Text = IIf(IsNull(objData.Fields(0).Value), "", objData.Fields(0).Value)
        txtItemName.Text = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
        cboBrand.Text = IIf(IsNull(objData.Fields(2).Value), "", objData.Fields(2).Value)
        txtExDate.Text = IIf(IsNull(objData.Fields(3).Value), "", objData.Fields(3).Value)
        txtMaxQTY.Text = IIf(IsNull(objData.Fields(4).Value), "", objData.Fields(4).Value)
        txtMinQTY.Text = IIf(IsNull(objData.Fields(5).Value), "", objData.Fields(5).Value)
        txtQTY.Text = IIf(IsNull(objData.Fields(6).Value), "", objData.Fields(6).Value)
        cboUnit.Text = IIf(IsNull(objData.Fields(7).Value), "", objData.Fields(7).Value)
        txtPrice.Text = IIf(IsNull(objData.Fields(8).Value), "", objData.Fields(8).Value)
        txtActPrice = IIf(IsNull(objData.Fields(9).Value), "", objData.Fields(9).Value)
        
    End If
        F_StockEditAdd.Caption = "Edit Stock"
        cmdDelete.Caption = "&Delete"
    End If
    
     strSQL = ""
     strSQL = strSQL & " Select * from brand"
    Set objBrand = clsConnect.GetRecordSet(strSQL)
     strSQL = ""
     strSQL = strSQL & " Select * from unit"
    Set objUnit = clsConnect.GetRecordSet(strSQL)
    
    Call psubLoadCombo(cboBrand, objBrand)
    Call psubLoadCombo(cboUnit, objUnit)
    
End Sub


Private Sub psubLoadCombo(cbo As ComboBox, objData As Object)
    With objData
        .MoveFirst
        Do While Not .EOF
            cbo.AddItem .Fields(1).Value
            .MoveNext
        Loop
    End With
End Sub

Private Sub txtActPrice_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
End Sub


Private Sub txtMaxQTY_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
End Sub



Private Sub txtMinQTY_KeyPress(KeyAscii As Integer)
  KeyAscii = pfNumberOnly(KeyAscii)
End Sub


Private Sub txtPrice_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
End Sub

Private Sub txtQTY_KeyPress(KeyAscii As Integer)
      KeyAscii = pfNumberOnly(KeyAscii)
End Sub
