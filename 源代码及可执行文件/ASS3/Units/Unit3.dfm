object customerForm: TcustomerForm
  Left = 305
  Top = 193
  Width = 1058
  Height = 581
  Caption = #39038#23458#30028#38754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = customerFormOnActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 16
    Width = 1041
    Height = 521
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #36873#36141#19979#21333
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 100
        Height = 40
        AutoSize = False
        Caption = #39184#21381#21015#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 480
        Top = 8
        Width = 233
        Height = 40
        AutoSize = False
        Caption = #36755#20837#24744#35201#19979#21333#30340#39184#21381#24207#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 464
        Top = 192
        Width = 100
        Height = 40
        AutoSize = False
        Caption = #33756#21333#21015#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 640
        Top = 192
        Width = 100
        Height = 40
        AutoSize = False
        Caption = #21333#21697#25968#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 768
        Top = 192
        Width = 100
        Height = 40
        AutoSize = False
        Caption = #24403#21069#20215#26684
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 64
        Width = 409
        Height = 257
        Color = clHighlightText
        DataSource = DataSource1
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 24
        Top = 328
        Width = 390
        Height = 25
        DataSource = DataSource1
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 488
        Top = 64
        Width = 121
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '157'
        OnChange = Edit1Change
        OnClick = Edit1Click
      end
      object ComboBox1: TComboBox
        Left = 456
        Top = 256
        Width = 145
        Height = 28
        AutoComplete = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 3
        Text = 'ComboBox1'
      end
      object Edit2: TEdit
        Left = 640
        Top = 256
        Width = 89
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '1'
        OnChange = Edit2Change
      end
      object Edit3: TEdit
        Left = 784
        Top = 248
        Width = 89
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = '1'
      end
      object Button1: TButton
        Left = 584
        Top = 336
        Width = 153
        Height = 41
        Caption = #28857#20987#19979#21333
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #21326#25991#20013#23435
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 480
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = #26410#23436#25104#35746#21333
      ImageIndex = 1
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 80
        Height = 20
        Caption = #35746#21333#21015#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -20
        Font.Name = #26999#20307
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 496
        Top = 56
        Width = 200
        Height = 20
        Caption = #36873#25321#35201#20462#25913#30340#35746#21333#24207#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -20
        Font.Name = #26999#20307
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 496
        Top = 160
        Width = 120
        Height = 20
        Caption = #36873#25321#20320#30340#25805#20316
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -20
        Font.Name = #26999#20307
        Font.Style = []
        ParentFont = False
      end
      object Edit4: TEdit
        Left = 504
        Top = 88
        Width = 281
        Height = 28
        TabOrder = 0
        Text = 'order_id'
      end
      object Button3: TButton
        Left = 488
        Top = 240
        Width = 129
        Height = 49
        Caption = #21462#28040#35746#21333
        TabOrder = 1
        OnClick = Button3Click
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 64
        Width = 409
        Height = 257
        Color = clHighlightText
        DataSource = DataSource1
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = #26999#20307
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 24
        Top = 328
        Width = 390
        Height = 25
        DataSource = DataSource1
        TabOrder = 3
      end
      object Button4: TButton
        Left = 824
        Top = 240
        Width = 137
        Height = 49
        Caption = #25903#20184#35746#21333
        TabOrder = 4
        OnClick = Button4Click
      end
      object OKButton: TButton
        Left = 664
        Top = 240
        Width = 121
        Height = 49
        Caption = #26631#35760#23436#25104
        TabOrder = 5
        OnClick = OKButtonClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = #24050#23436#25104#35746#21333
      ImageIndex = 2
      object Label9: TLabel
        Left = 16
        Top = 24
        Width = 80
        Height = 20
        Caption = #35746#21333#21015#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #26999#20307
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 496
        Top = 48
        Width = 220
        Height = 20
        Caption = #36755#20837#24744#35201#20462#25913#30340#35746#21333#32534#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #26999#20307
        Font.Style = []
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 504
        Top = 80
        Width = 305
        Height = 28
        TabOrder = 0
      end
      object Button6: TButton
        Left = 528
        Top = 208
        Width = 121
        Height = 41
        Caption = #21024#38500#35813#35746#21333
        TabOrder = 1
        OnClick = Button6Click
      end
      object DBGrid3: TDBGrid
        Left = 16
        Top = 64
        Width = 409
        Height = 257
        Color = clHighlightText
        DataSource = DataSource1
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator3: TDBNavigator
        Left = 24
        Top = 328
        Width = 390
        Height = 25
        DataSource = DataSource1
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = #20010#20154#20449#24687
      ImageIndex = 3
      object Label16: TLabel
        Left = 40
        Top = 32
        Width = 80
        Height = 20
        Caption = #39038#23458#26165#31216
      end
      object Label17: TLabel
        Left = 40
        Top = 112
        Width = 80
        Height = 20
        Caption = #37197#36865#22320#22336
      end
      object Label18: TLabel
        Left = 40
        Top = 200
        Width = 80
        Height = 20
        Caption = #25903#20184#26041#24335
      end
      object infoNameEdit: TEdit
        Left = 160
        Top = 24
        Width = 281
        Height = 28
        TabOrder = 0
      end
      object infoAddressEdit: TEdit
        Left = 160
        Top = 104
        Width = 281
        Height = 28
        TabOrder = 1
        Text = ' '
      end
      object infoPaymentEdit: TEdit
        Left = 160
        Top = 192
        Width = 281
        Height = 28
        TabOrder = 2
        Text = ' '
      end
      object Button7: TButton
        Left = 72
        Top = 277
        Width = 321
        Height = 65
        Caption = #20445#23384#20449#24687
        TabOrder = 3
        OnClick = Button7Click
      end
    end
  end
  object Button5: TButton
    Left = 936
    Top = 0
    Width = 97
    Height = 41
    Caption = #36864#20986#30331#24405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button5Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 440
  end
  object ADOQuery1: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <>
    Left = 408
  end
  object ADOQuery2: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <>
    Left = 552
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 576
  end
end
