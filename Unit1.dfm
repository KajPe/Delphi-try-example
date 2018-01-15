object Form1: TForm1
  Left = 192
  Top = 124
  Width = 694
  Height = 556
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 260
    Top = 20
    Width = 30
    Height = 13
    Caption = 'Code'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 252
    Top = 308
    Width = 37
    Height = 13
    Caption = 'Result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 296
    Top = 300
    Width = 377
    Height = 213
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object RichEdit1: TRichEdit
    Left = 296
    Top = 12
    Width = 373
    Height = 277
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 4
    Width = 237
    Height = 509
    ActivePage = TabSheet2
    TabIndex = 1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Single'
      object Button1: TButton
        Left = 4
        Top = 8
        Width = 221
        Height = 25
        Caption = 'try - except'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 4
        Top = 36
        Width = 221
        Height = 25
        Caption = 'try - finally'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 4
        Top = 72
        Width = 221
        Height = 25
        Caption = 'try - raise - except'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 4
        Top = 100
        Width = 221
        Height = 25
        Caption = 'try - raise - finally'
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 4
        Top = 140
        Width = 221
        Height = 25
        Caption = 'try - exit - except'
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 4
        Top = 168
        Width = 221
        Height = 25
        Caption = 'try - exit - finally'
        TabOrder = 5
        OnClick = Button6Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dual'
      ImageIndex = 1
      object Button7: TButton
        Left = 4
        Top = 36
        Width = 221
        Height = 25
        Caption = 'try - ( try - finally ) - finally'
        TabOrder = 0
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 4
        Top = 8
        Width = 221
        Height = 25
        Caption = 'try - ( try - except ) - except'
        TabOrder = 1
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 4
        Top = 88
        Width = 221
        Height = 25
        Caption = 'try - ( try - raise - except ) - except'
        TabOrder = 2
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 4
        Top = 116
        Width = 221
        Height = 25
        Caption = 'try - ( try - raise - finally ) - except'
        TabOrder = 3
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 4
        Top = 144
        Width = 221
        Height = 25
        Caption = 'try - ( try - raise - finally ) - finally'
        TabOrder = 4
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 4
        Top = 172
        Width = 217
        Height = 25
        Caption = 'try - ( try - raise - except ) - finally'
        TabOrder = 5
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 8
        Top = 236
        Width = 209
        Height = 25
        Caption = 'try - ( try - exit - except ) - finally'
        TabOrder = 6
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 8
        Top = 264
        Width = 209
        Height = 25
        Caption = 'try - ( try - exit - except ) - except'
        TabOrder = 7
        OnClick = Button14Click
      end
      object Button15: TButton
        Left = 8
        Top = 292
        Width = 209
        Height = 25
        Caption = 'try - ( try - exit - finally ) - finally'
        TabOrder = 8
        OnClick = Button15Click
      end
      object Button16: TButton
        Left = 8
        Top = 320
        Width = 209
        Height = 25
        Caption = 'try - ( try - exit - finally ) - except'
        TabOrder = 9
        OnClick = Button16Click
      end
    end
  end
end
