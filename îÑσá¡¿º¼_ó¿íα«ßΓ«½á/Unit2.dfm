object Form2: TForm2
  Left = 379
  Top = 291
  BorderStyle = bsDialog
  Caption = #1059#1075#1083#1099' '#1076#1072#1074#1083#1077#1085#1080#1103
  ClientHeight = 397
  ClientWidth = 684
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
    Left = 16
    Top = 8
    Width = 657
    Height = 361
    Legend.Visible = False
    Title.Font.Charset = SYMBOL_CHARSET
    Title.Font.Name = 'Symbol'
    Title.Text.Strings = (
      'n1,n2')
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
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
  end
end
