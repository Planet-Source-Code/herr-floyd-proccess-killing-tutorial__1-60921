VERSION 5.00
Begin VB.Form Main 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Process Killing Tutorial"
   ClientHeight    =   780
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5640
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   780
   ScaleWidth      =   5640
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton AB0UT 
      Caption         =   "About"
      Height          =   375
      Left            =   4680
      TabIndex        =   2
      Top             =   240
      Width           =   855
   End
   Begin VB.CommandButton K1LL 
      Caption         =   "Kill!"
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox pr0cess 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Text            =   "enter process name"
      ToolTipText     =   "Enter Process to kill"
      Top             =   240
      Width           =   3495
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Process killing tutorial.
'aka another way to murder a process
'
'please note, to implement specific process killing into
'your code, the line killprocessus "%name%" works good,
'just attach the module.

Private Sub AB0UT_Click()
About.Show
End Sub

Private Sub K1LL_Click()
KillProcessus pr0cess.Text
End Sub
