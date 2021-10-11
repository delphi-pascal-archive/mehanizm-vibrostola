object Form1: TForm1
  Left = 220
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1077#1093#1072#1085#1080#1079#1084' '#1074#1080#1073#1088#1086#1089#1090#1086#1083#1072
  ClientHeight = 952
  ClientWidth = 1241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Image1: TImage
    Left = 8
    Top = 32
    Width = 737
    Height = 465
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Label1: TLabel
    Left = 418
    Top = 606
    Width = 25
    Height = 16
    Caption = '1/10'
  end
  object Label2: TLabel
    Left = 185
    Top = 9
    Width = 352
    Height = 16
    Caption = #1057#1093#1077#1084#1072' '#1074#1080#1073#1088#1086#1089#1090#1086#1083#1072' '#1085#1072' '#1073#1072#1079#1077' '#1084#1077#1093#1072#1085#1080#1079#1084#1072' II '#1082#1083#1072#1089#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 594
    Top = 9
    Width = 23
    Height = 16
    Caption = 'Xo='
  end
  object Label19: TLabel
    Left = 674
    Top = 9
    Width = 24
    Height = 16
    Caption = 'Yo='
  end
  object Label20: TLabel
    Left = 74
    Top = 9
    Width = 18
    Height = 16
    Caption = 'M='
  end
  object Button1: TButton
    Left = 9
    Top = 601
    Width = 112
    Height = 33
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 601
    Width = 105
    Height = 33
    Caption = #1057#1090#1086#1087
    TabOrder = 1
    OnClick = Button2Click
  end
  object TrackBar1: TTrackBar
    Left = 249
    Top = 601
    Width = 176
    Height = 32
    BorderWidth = 1
    Max = 200
    Min = 1
    Frequency = 5
    Position = 10
    TabOrder = 2
    OnChange = TrackBar1Change
  end
  object Button3: TButton
    Left = 456
    Top = 601
    Width = 153
    Height = 32
    Caption = #1059#1075#1083#1099' '#1076#1072#1074#1083#1077#1085#1080#1103
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 1314
    Top = 954
    Width = 98
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 624
    Top = 553
    Width = 121
    Height = 32
    Caption = #1058#1088#1072#1077#1082#1090#1086#1088#1080#1103
    TabOrder = 5
    OnClick = Button5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 505
    Width = 601
    Height = 88
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1080#1085#1090#1077#1079#1072
    TabOrder = 6
    object Label3: TLabel
      Left = 9
      Top = 25
      Width = 22
      Height = 16
      Caption = 'a1='
    end
    object Label4: TLabel
      Left = 96
      Top = 27
      Width = 20
      Height = 16
      Caption = #1084#1084
    end
    object Label5: TLabel
      Left = 128
      Top = 25
      Width = 22
      Height = 16
      Caption = 'a2='
    end
    object Label6: TLabel
      Left = 218
      Top = 27
      Width = 18
      Height = 16
      Caption = #1084#1084
    end
    object Label7: TLabel
      Left = 16
      Top = 57
      Width = 15
      Height = 16
      Caption = 'b='
    end
    object Label8: TLabel
      Left = 96
      Top = 58
      Width = 22
      Height = 16
      Caption = #1084#1084
    end
    object Label9: TLabel
      Left = 128
      Top = 57
      Width = 41
      Height = 16
      Caption = 'a1/a2='
    end
    object Label10: TLabel
      Left = 464
      Top = 27
      Width = 20
      Height = 16
      Caption = #1084#1084
    end
    object Label11: TLabel
      Left = 377
      Top = 25
      Width = 17
      Height = 16
      Caption = 'l1='
    end
    object Label12: TLabel
      Left = 344
      Top = 27
      Width = 20
      Height = 16
      Caption = #1084#1084
    end
    object Label13: TLabel
      Left = 256
      Top = 25
      Width = 15
      Height = 16
      Caption = 'e='
    end
    object Label14: TLabel
      Left = 256
      Top = 57
      Width = 17
      Height = 16
      Caption = 'l2='
    end
    object Label15: TLabel
      Left = 344
      Top = 58
      Width = 22
      Height = 16
      Caption = #1084#1084
    end
    object Label16: TLabel
      Left = 464
      Top = 58
      Width = 22
      Height = 16
      Caption = #1084#1084
    end
    object Label17: TLabel
      Left = 377
      Top = 57
      Width = 17
      Height = 16
      Caption = 'l3='
    end
    object Label21: TLabel
      Left = 492
      Top = 25
      Width = 45
      Height = 24
      Caption = 'n      ='
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 499
      Top = 34
      Width = 28
      Height = 20
      Caption = 'max'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 41
      Top = 23
      Width = 48
      Height = 19
      AutoSize = False
      TabOrder = 0
      Text = '90'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 160
      Top = 23
      Width = 49
      Height = 19
      AutoSize = False
      TabOrder = 1
      Text = '100'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 41
      Top = 55
      Width = 48
      Height = 19
      AutoSize = False
      TabOrder = 2
      Text = '105'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 176
      Top = 55
      Width = 41
      Height = 19
      AutoSize = False
      ReadOnly = True
      TabOrder = 3
      Text = '0.9'
    end
    object Edit5: TEdit
      Left = 409
      Top = 23
      Width = 48
      Height = 19
      AutoSize = False
      ReadOnly = True
      TabOrder = 4
      Text = '100'
    end
    object Edit6: TEdit
      Left = 288
      Top = 23
      Width = 49
      Height = 19
      AutoSize = False
      ReadOnly = True
      TabOrder = 5
      Text = '90'
    end
    object Edit7: TEdit
      Left = 288
      Top = 55
      Width = 49
      Height = 19
      AutoSize = False
      ReadOnly = True
      TabOrder = 6
      Text = '110'
    end
    object Edit8: TEdit
      Left = 409
      Top = 55
      Width = 48
      Height = 19
      AutoSize = False
      ReadOnly = True
      TabOrder = 7
      Text = '110'
    end
    object Button6: TButton
      Left = 496
      Top = 57
      Width = 97
      Height = 24
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Enabled = False
      TabOrder = 8
      OnClick = Button6Click
    end
    object Edit9: TEdit
      Left = 548
      Top = 26
      Width = 41
      Height = 18
      AutoSize = False
      ReadOnly = True
      TabOrder = 9
      Text = '0.9'
    end
  end
  object Button7: TButton
    Left = 8
    Top = 5
    Width = 21
    Height = 21
    Caption = '+'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 33
    Top = 5
    Width = 21
    Height = 21
    Caption = '-'
    TabOrder = 8
    OnClick = Button8Click
  end
  object CheckBox1: TCheckBox
    Left = 664
    Top = 513
    Width = 57
    Height = 24
    Caption = #1057#1083#1077#1076
    TabOrder = 9
  end
  object StaticText1: TStaticText
    Left = 626
    Top = 6
    Width = 36
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'StaticText1'
    TabOrder = 10
  end
  object StaticText2: TStaticText
    Left = 706
    Top = 6
    Width = 36
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'StaticText1'
    TabOrder = 11
  end
  object StaticText3: TStaticText
    Left = 98
    Top = 6
    Width = 47
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'StaticText1'
    TabOrder = 12
  end
  object Chart1: TChart
    Left = 755
    Top = 8
    Width = 480
    Height = 234
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginTop = 7
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    Legend.Alignment = laBottom
    View3D = False
    TabOrder = 13
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 755
    Top = 243
    Width = 480
    Height = 234
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginTop = 7
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    Legend.Alignment = laBottom
    View3D = False
    TabOrder = 14
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 755
    Top = 478
    Width = 480
    Height = 234
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginTop = 7
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    Legend.Alignment = laBottom
    View3D = False
    TabOrder = 15
    object Series7: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series8: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series9: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart4: TChart
    Left = 755
    Top = 713
    Width = 480
    Height = 234
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginTop = 7
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    Legend.Alignment = laBottom
    View3D = False
    TabOrder = 16
    object Series10: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series11: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series12: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Button9: TButton
    Left = 624
    Top = 601
    Width = 123
    Height = 32
    Caption = #1044#1080#1085#1072#1084#1080#1082#1072
    TabOrder = 17
    OnClick = Button9Click
  end
  object Chart5: TChart
    Left = 10
    Top = 642
    Width = 743
    Height = 305
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = clBlack
    Gradient.StartColor = clBlack
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3D = False
    TabOrder = 18
    object Series13: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series14: TLineSeries
      Active = False
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
end
