VERSION 5.00
Begin VB.Form F_Menu 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Menu"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   3915
   Icon            =   "F_Menu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   3915
   StartUpPosition =   1  'CenterOwner
   Begin VB.Menu cmdMaintenance 
      Caption         =   "Maintenance"
      Begin VB.Menu cmdProducts 
         Caption         =   "&Products"
         Shortcut        =   ^P
      End
      Begin VB.Menu cmdBrand 
         Caption         =   "&Brand"
         Shortcut        =   ^B
      End
      Begin VB.Menu cmdUnit 
         Caption         =   "&Unit"
         Shortcut        =   ^U
      End
      Begin VB.Menu cmdQuestion 
         Caption         =   "&UserQuestion"
         Shortcut        =   ^Q
      End
   End
End
Attribute VB_Name = "F_Menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBrand_Click()
    F_Brand.Show vbModal
End Sub

Private Sub cmdProducts_Click()
    F_Products.Show vbModal
End Sub

Private Sub cmdUnit_Click()
    F_Unit.Show vbModal
End Sub
