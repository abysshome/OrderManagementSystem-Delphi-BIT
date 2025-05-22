object registerForm: TregisterForm
  Left = 381
  Top = 170
  Width = 901
  Height = 641
  Caption = #27880#20876#30028#38754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 96
    Top = 16
    Width = 681
    Height = 537
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 328
      Width = 137
      Height = 33
      AutoSize = False
      Caption = #30005#35805#21495#30721
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 88
      Top = 264
      Width = 137
      Height = 33
      AutoSize = False
      Caption = #23494#30721
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 80
      Top = 200
      Width = 137
      Height = 33
      AutoSize = False
      Caption = #29992#25143#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 32
      Top = 392
      Width = 150
      Height = 70
      Caption = #36820#22238#30331#24405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #26999#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 408
      Top = 392
      Width = 150
      Height = 70
      Caption = #27880#20876
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 240
      Top = 184
      Width = 273
      Height = 35
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 240
      Top = 256
      Width = 273
      Height = 35
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 56
      Width = 617
      Height = 89
      Caption = #36873#25321#24744#35201#27880#20876#30340#36523#20221
      Columns = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #26999#20307
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        #39038#23458
        #39184#21381
        #39569#25163)
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 240
      Top = 320
      Width = 273
      Height = 35
      TabOrder = 5
    end
  end
  object ADOQuery1: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <
      item
        Name = 'username'
        Size = -1
        Value = Null
      end
      item
        Name = 'password'
        Size = -1
        Value = Null
      end
      item
        Name = 'phone'
        Size = -1
        Value = Null
      end
      item
        Name = 'type'
        Size = -1
        Value = Null
      end
      item
        Name = 'created_at'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO users (username, password, phone, type, created_at) ' +
        'Values(:username, :password, :phone, :type, :created_at)')
    Left = 576
    Top = 104
  end
  object ADOQuery2: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <
      item
        Name = 'username'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT COUNT(*) AS UserCount FROM Users WHERE username = :userna' +
        'me;')
    Left = 616
    Top = 104
  end
end
