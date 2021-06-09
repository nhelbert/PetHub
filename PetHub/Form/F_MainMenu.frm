VERSION 5.00
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
   MinButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   9915
   StartUpPosition =   2  'CenterScreen
End
Attribute VB_Name = "F_MainMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Unload(Cancel As Integer)
  If MsgBox("Are you sure you want to Logout ?", vbYesNo + vbQuestion, SystemTitle) = vbYes Then
    F_LogIn.Show
  Else
    Cancel = 1
  End If
End Sub
