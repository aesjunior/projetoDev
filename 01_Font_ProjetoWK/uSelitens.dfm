object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 173
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 25
    Align = alClient
    Caption = 'Itens'
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 746
    ExplicitHeight = 185
    Height = 148
    Width = 626
    object DBText2: TDBText
      Left = 91
      Top = 24
      Width = 65
      Height = 17
      Enabled = False
    end
    object Label1: TLabel
      Left = 35
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Nro Item.:'
    end
    object Label2: TLabel
      Left = 25
      Top = 47
      Width = 60
      Height = 13
      Caption = 'Nro Pedido.:'
    end
    object DBText1: TDBText
      Left = 91
      Top = 47
      Width = 65
      Height = 17
      Enabled = False
    end
    object Label5: TLabel
      Left = 39
      Top = 73
      Width = 46
      Height = 13
      Caption = 'Produto.:'
    end
    object Label3: TLabel
      Left = 21
      Top = 103
      Width = 64
      Height = 13
      Caption = 'Quantidade.:'
    end
    object Label6: TLabel
      Left = 159
      Top = 103
      Width = 72
      Height = 13
      Caption = 'Valor Unitario.:'
    end
    object Label4: TLabel
      Left = 383
      Top = 103
      Width = 59
      Height = 13
      Caption = 'Valor Total.:'
    end
    object Edit1: TEdit
      Left = 91
      Top = 70
      Width = 56
      Height = 21
      MaxLength = 5
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 157
      Top = 70
      Width = 361
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 91
      Top = 100
      Width = 56
      Height = 21
      MaxLength = 5
      TabOrder = 2
    end
    object DBCurrencyEdit1: TDBCurrencyEdit
      Left = 241
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DBCurrencyEdit2: TDBCurrencyEdit
      Left = 454
      Top = 100
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object tbBotao: TToolBar
    Left = 0
    Top = 0
    Width = 626
    Height = 25
    ButtonHeight = 21
    ButtonWidth = 49
    EdgeBorders = [ebLeft, ebTop, ebRight]
    EdgeOuter = esNone
    ShowCaptions = True
    TabOrder = 1
    ExplicitLeft = -113
    ExplicitWidth = 739
    object teSalvar: TToolButton
      Tag = -1
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Caption = 'Salvar'
      ImageIndex = 6
    end
    object teCancelar: TToolButton
      Tag = -1
      Left = 49
      Top = 0
      Cursor = crHandPoint
      Caption = 'Cancelar'
      ImageIndex = 7
    end
  end
end
