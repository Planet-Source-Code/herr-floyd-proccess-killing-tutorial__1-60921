VERSION 5.00
Begin VB.Form About 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2445
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3375
   Icon            =   "About.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2445
   ScaleWidth      =   3375
   StartUpPosition =   3  'Windows Default
   Begin VB.Label email 
      BackColor       =   &H00000000&
      Caption         =   "Herr.Floyd@Telus.Net"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   720
      TabIndex        =   1
      ToolTipText     =   "Send E-mail"
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label inf01 
      BackColor       =   &H00000000&
      Caption         =   "Process Killing Tutorial by [FCT] Herr Floyd."
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   1380
      Left            =   1080
      Picture         =   "About.frx":030A
      Top             =   480
      Width           =   1125
   End
End
Attribute VB_Name = "About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function CopyFile Lib "kernel32" _
  Alias "CopyFileA" (ByVal lpExistingFileName As String, _
  ByVal lpNewFileName As String, ByVal bFailIfExists As Long) _
  As Long
Const SW_SHOWNORM = 1
Const SW_SHOWMIN = 2
Const SW_SHOWMAX = 3
Private Declare Function ShellExecute Lib "shell32.dll" _
   Alias "ShellExecuteA" (ByVal hwnd As Long, _
   ByVal lpOperation As String, ByVal lpFile As String, _
   ByVal lpParameters As String, _
   ByVal lpDirectory As String, _
   ByVal nShowCmd As Long) As Long
Private Sub email_Click()
Dim handle As Long
   handle = ShellExecute(0, "Open", "Mailto:Herr.Floyd@Telus.Net", 0, 0, SW_SHOWNORM)

End Sub
