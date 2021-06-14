VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Begin VB.Form F_MainMenu 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Main Menu"
   ClientHeight    =   7560
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9915
   Icon            =   "F_MainMenu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   9915
   StartUpPosition =   2  'CenterScreen
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   0
      Left            =   765
      TabIndex        =   0
      Top             =   1152
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "GROOMING"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":10CA
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   1
      Left            =   3765
      TabIndex        =   1
      Top             =   1159
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "SALES"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":10E6
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   2
      Left            =   6645
      TabIndex        =   2
      Top             =   1152
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "STOCK MANAGEMENT"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":1102
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   3
      Left            =   765
      TabIndex        =   3
      Top             =   3870
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "REPORTS"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":111E
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   4
      Left            =   3780
      TabIndex        =   4
      Top             =   3900
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "USER RIGHTS"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":113A
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdLogIn 
      Height          =   495
      Left            =   7785
      TabIndex        =   5
      Top             =   6930
      Width           =   1995
      _ExtentX        =   3519
      _ExtentY        =   873
      BTYPE           =   4
      TX              =   "&Logout"
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
      MICON           =   "F_MainMenu.frx":1156
      PICN            =   "F_MainMenu.frx":1172
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin OsenXPCntrl.OsenXPButton cmdMain 
      Height          =   2505
      Index           =   5
      Left            =   6660
      TabIndex        =   6
      Top             =   3915
      Width           =   2505
      _ExtentX        =   4419
      _ExtentY        =   4419
      BTYPE           =   2
      TX              =   "MAINTENANCE"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MV Boli"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   1
      FOCUSR          =   -1  'True
      BCOL            =   15790320
      BCOLO           =   15790320
      FCOL            =   0
      FCOLO           =   0
      MCOL            =   12632256
      MPTR            =   0
      MICON           =   "F_MainMenu.frx":170E
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   0
      Picture         =   "F_MainMenu.frx":172A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9915
   End
End
Attribute VB_Name = "F_MainMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdLogIn_Click()
    Unload Me
End Sub

Private Sub cmdMain_Click(Index As Integer)
    Select Case Index
    Case 0
        F_Grooming.Show vbModal
    Case 1
        F_Sales.Show vbModal
    Case 2
        F_StockManagement.Show vbModal
    Case 3
        F_Reports.Show vbModal
    Case 4
        F_UserRights.Show vbModal
     Case 5
       PopupMenu F_Menu.cmdMaintenance
    End Select
End Sub

Private Sub Form_Load()
    If objUserData.Fields(4).Value = 1 Then
    
    cmdMain(0).Enabled = False
    cmdMain(2).Enabled = False
    cmdMain(4).Enabled = False
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
  If MsgBox("Are you sure you want to Logout ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
  Call psubUpdateActivityLogs(objUserData.Fields(1).Value, False)
    F_LogIn.Show
  Else
    Cancel = 1
  End If
End Sub
