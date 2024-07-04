VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Racing"
   ClientHeight    =   5565
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7230
   LinkTopic       =   "Form1"
   ScaleHeight     =   5565
   ScaleWidth      =   7230
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Interval        =   100
      Left            =   4920
      Top             =   2400
   End
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   4440
      Top             =   1560
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   4320
      Top             =   600
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   5520
      TabIndex        =   3
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Score "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5520
      TabIndex        =   2
      Top             =   720
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   1005
      Left            =   960
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   855
   End
   Begin VB.Line Line2 
      BorderWidth     =   2
      X1              =   6000
      X2              =   6000
      Y1              =   3480
      Y2              =   5520
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   960
      X2              =   960
      Y1              =   3240
      Y2              =   5640
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   1920
      Top             =   0
      Width           =   735
   End
   Begin VB.Label Label2 
      Height          =   495
      Left            =   5520
      TabIndex        =   1
      Top             =   0
      Width           =   1695
   End
   Begin VB.Label Label1 
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 37 Then

    If Image1.Left < 1000 Then
    Image1.Left = Image1.Left - 0
    Else
    Image1.Left = Image1.Left - 120
    End If

ElseIf KeyCode = 39 Then
    If Image1.Left > 5000 Then
    Image1.Left = Image1.Left + 0
    Else
   Image1.Left = Image1.Left + 120
    End If

Else


End If

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If X < 1000 Or X > 5000 Then


Else
    If X > Image1.Left Then
        Image1.Left = Image1.Left + 120
    ElseIf X < Image1.Left Then
        Image1.Left = Image1.Left - 120
    End If
Label1.Caption = X
Label2.Caption = Y
End If
End Sub

Private Sub Timer1_Timer()
 Shape1.Top = Shape1.Top + 5
If Shape1.Top < 6090 Then
Shape1.Top = Shape1.Top + (accel / 6)
Else
Shape1.Top = 0
End If
End Sub

Private Sub Timer2_Timer()
' If Image1.Left > Shape1.Left - (855 / 2) Then
        '  If Image1.Left < Shape1.Left + (855 / 2) Then
              ' If Image1.Top > Shape1.Top - (735 / 2) Then
                   ' If Image1.Top < Shape1.Top + (735 / 2) Then
                        
                      '  Timer1.Enabled = False
                       ' Timer3.Enabled = False
                      
                        'If MsgBox("Score is:   " & a, vbYescancle + vbQuestion, "Score") = vbOK Then
                        
                       ' End
                        
                          
                           
                        
                                
                            
                       ' End If
                        
                        
                    'End If
              ' End If
         ' End If
    ' End If
     
If Shape1.Top = Image1.Top - 615 And Shape1.Left = Image1.Left Then
    Timer1.Enabled = False

ElseIf Shape1.Top = Image1.Top - 615 And Shape1.Left = Image1.Left - 120 Then
    Timer1.Enabled = False

ElseIf Shape1.Top = Image1.Top - 615 And Shape1.Left = Image1.Left - 240 Then
    Timer1.Enabled = False

ElseIf Shape1.Top = Image1.Top - 615 And Shape1.Left = Image1.Left - 360 Then
    Timer1.Enabled = False

ElseIf Shape1.Top = Image1.Top - 615 And Shape1.Left = Image1.Left - 480 Then
    Timer1.Enabled = False


End If
     
     
End Sub

Private Sub Timer3_Timer()
Label4.Caption = a
a = a + 1

End Sub
