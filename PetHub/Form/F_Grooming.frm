VERSION 5.00
Object = "{331187EF-B4B5-4368-9ACE-9E4E2FACD921}#1.0#0"; "ponga.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form F_Grooming 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Grooming"
   ClientHeight    =   6060
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5910
   Icon            =   "F_Grooming.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6060
   ScaleWidth      =   5910
   StartUpPosition =   2  'CenterScreen
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
      TabIndex        =   7
      Top             =   180
      Width           =   3330
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3165
      Left            =   135
      TabIndex        =   6
      Top             =   630
      Width           =   5640
      _ExtentX        =   9948
      _ExtentY        =   5583
      _Version        =   393216
      FixedCols       =   0
   End
   Begin VB.TextBox txtPrice 
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
      Top             =   4860
      Width           =   3330
   End
   Begin VB.TextBox txtDescription 
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
      Height          =   765
      Left            =   2430
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   3960
      Width           =   3330
   End
   Begin OsenXPCntrl.OsenXPButton cmdDelete 
      Height          =   495
      Left            =   3345
      TabIndex        =   2
      Top             =   5400
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
      MICON           =   "F_Grooming.frx":10CA
      PICN            =   "F_Grooming.frx":10E6
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
      Left            =   585
      TabIndex        =   3
      Top             =   5415
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
      MICON           =   "F_Grooming.frx":1682
      PICN            =   "F_Grooming.frx":169E
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
      Left            =   150
      TabIndex        =   8
      Top             =   180
      Width           =   2265
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PRICE :"
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
      Top             =   4860
      Width           =   2265
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "DESCRIPTION :"
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
      TabIndex        =   4
      Top             =   3960
      Width           =   2265
   End
End
Attribute VB_Name = "F_Grooming"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
