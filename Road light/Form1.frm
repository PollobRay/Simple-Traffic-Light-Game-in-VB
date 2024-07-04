VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Road Project By Pollob Roy"
   ClientHeight    =   9840
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15885
   FillColor       =   &H000000FF&
   ForeColor       =   &H000040C0&
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9840
   ScaleWidth      =   15885
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer t2 
      Interval        =   100
      Left            =   3960
      Top             =   4320
   End
   Begin VB.Timer t1 
      Interval        =   3500
      Left            =   14520
      Top             =   2640
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Rage Italic"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   10560
      TabIndex        =   1
      Top             =   8400
      Width           =   5175
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9000
      TabIndex        =   0
      Top             =   8040
      Width           =   3135
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   20280
      Y1              =   6960
      Y2              =   6960
   End
   Begin VB.Line Line2 
      BorderStyle     =   2  'Dash
      X1              =   0
      X2              =   20280
      Y1              =   6240
      Y2              =   6240
   End
   Begin VB.Shape Shape7 
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   735
      Left            =   1560
      Top             =   5280
      Width           =   375
   End
   Begin VB.Shape Shape6 
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   735
      Left            =   2400
      Top             =   5280
      Width           =   375
   End
   Begin VB.Shape Shape3 
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   1095
      Left            =   720
      Top             =   4920
      Width           =   2655
   End
   Begin VB.Shape Shape5 
      FillColor       =   &H00000040&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   960
      Shape           =   3  'Circle
      Top             =   5760
      Width           =   495
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00000040&
      FillStyle       =   0  'Solid
      Height          =   2415
      Left            =   13440
      Top             =   3120
      Width           =   255
   End
   Begin VB.Shape green 
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   13320
      Shape           =   3  'Circle
      Top             =   2400
      Width           =   495
   End
   Begin VB.Shape yellow 
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   13320
      Shape           =   3  'Circle
      Top             =   1440
      Width           =   495
   End
   Begin VB.Shape red 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   13320
      Shape           =   3  'Circle
      Top             =   480
      Width           =   495
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   2895
      Left            =   13200
      Top             =   240
      Width           =   735
   End
   Begin VB.Shape Shape4 
      FillColor       =   &H00000040&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   2760
      Shape           =   3  'Circle
      Top             =   5760
      Width           =   495
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   20280
      Y1              =   5520
      Y2              =   5520
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
red.Visible = True
yellow.Visible = False
green.Visible = False
End Sub

Private Sub t1_Timer()
If red.Visible = True Then
yellow.Visible = True
green.Visible = False
red.Visible = False
ElseIf yellow.Visible = True Then
green.Visible = True
red.Visible = False
yellow.Visible = False
ElseIf green.Visible = True Then
red.Visible = True
yellow.Visible = False
green.Visible = False
End If


End Sub

Private Sub t2_Timer()
If red.Visible = True Then
Shape3.Left = Shape3.Left + 0
Shape4.Left = Shape4.Left + 0
Shape5.Left = Shape5.Left + 0
Shape6.Left = Shape6.Left + 0
Shape7.Left = Shape7.Left + 0
Label1 = "Created By..."
Label2 = "Pollob Roy"
ElseIf yellow.Visible = True Then
Shape3.Left = Shape3.Left + 40
Shape4.Left = Shape4.Left + 40
Shape5.Left = Shape5.Left + 40
Shape6.Left = Shape6.Left + 40
Shape7.Left = Shape7.Left + 40
Label1 = "Created By..."
Label2 = "P.Roy"
ElseIf green.Visible = True Then
Shape3.Left = Shape3.Left + 80
Shape4.Left = Shape4.Left + 80
Shape5.Left = Shape5.Left + 80
Shape6.Left = Shape6.Left + 80
Shape7.Left = Shape7.Left + 80
Label1 = "Created By"
Label2 = "P.C.Roy"
End If
End Sub
