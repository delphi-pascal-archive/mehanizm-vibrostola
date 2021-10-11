object Form3: TForm3
  Left = 192
  Top = 124
  BorderStyle = bsDialog
  Caption = #1058#1088#1072#1077#1082#1090#1086#1088#1080#1103' '#1083#1102#1073#1086#1081' '#1090#1086#1095#1082#1080' '#1089#1090#1086#1083#1072
  ClientHeight = 439
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Chart1: TChart
    Left = 8
    Top = 0
    Width = 457
    Height = 433
    Legend.Visible = False
    Title.Text.Strings = (
      'y=y(x)')
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 472
    Top = 0
    Width = 425
    Height = 433
    Legend.Visible = False
    Title.Text.Strings = (
      #1047#1072#1082#1086#1085' '#1076#1074#1080#1078#1077#1085#1080#1103' x,y '#1086#1090' '#1091#1075#1083#1072' '#1087#1086#1074#1086#1088#1086#1090#1072' '#1082#1088#1080#1074#1086#1096#1080#1087#1072)
    View3D = False
    TabOrder = 1
    object Series2: TLineSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
