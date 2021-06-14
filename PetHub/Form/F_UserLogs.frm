VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_UserLogs 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "User Logs"
   ClientHeight    =   5565
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5910
   Icon            =   "F_UserLogs.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5565
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
      Left            =   2438
      TabIndex        =   1
      Top             =   135
      Width           =   3330
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   4785
      Left            =   135
      TabIndex        =   0
      Top             =   630
      Width           =   5640
      _ExtentX        =   9948
      _ExtentY        =   8440
      _Version        =   393216
      Cols            =   3
      FixedCols       =   0
      AllowUserResizing=   1
   End
   Begin VB.Label Label2 
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
      TabIndex        =   2
      Top             =   135
      Width           =   2265
   End
   Begin VB.Image Image1 
      Height          =   5595
      Left            =   0
      Picture         =   "F_UserLogs.frx":10CA
      Stretch         =   -1  'True
      Top             =   0
      Width           =   5910
   End
End
Attribute VB_Name = "F_UserLogs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim objData As Object
    strSQL = ""
    strSQL = strSQL & "SELECT a.*,b.fullname FROM useractivity a inner join users b on a.user=b.employeeCode"
    
  Set objData = clsConnect.GetRecordSet(strSQL)
  
  Call psubLoadFlexGrid(objData)

End Sub


Private Sub psubLoadFlexGrid(objData As Object)
    Dim a As Integer
    With MSFlexGrid1
        .Rows = 1
      For a = 0 To .Cols - 1
                .TextMatrix(0, a) = Choose(a + 1, "NAME", "LOG IN", "LOG OUT")
                .Row = 0
                .Col = a
                .ColAlignment(a) = flexAlignCenterCenter
                .ColWidth(a) = 1780
                .RowHeight(0) = 400
                .CellFontBold = True
      Next a
  
        Do While Not objData.EOF
        
                .Rows = .Rows + 1
                .TextMatrix(.Rows - 1, 0) = IIf(IsNull(objData.Fields(2).Value), "", objData.Fields(2).Value)
                .TextMatrix(.Rows - 1, 1) = IIf(IsNull(objData.Fields(1).Value), "", objData.Fields(1).Value)
                .TextMatrix(.Rows - 1, 2) = IIf(IsNull(objData.Fields(3).Value), "", objData.Fields(3).Value)
              
           
            objData.MoveNext
        Loop
    
    End With
    

End Sub

Private Sub txtSearch_Change()
    Dim objData As Object
    strSQL = ""
    strSQL = strSQL & "SELECT a.*,b.fullname FROM useractivity a inner join users b on a.id=b.id"
    strSQL = strSQL & " Where b.fullname like '%" & txtSearch.Text & "%'"
  Set objData = clsConnect.GetRecordSet(strSQL)
  Call psubLoadFlexGrid(objData)
End Sub
