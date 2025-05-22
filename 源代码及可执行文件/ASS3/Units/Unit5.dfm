object riderForm: TriderForm
  Left = 426
  Top = 223
  Width = 1028
  Height = 550
  Caption = #39569#25163#30028#38754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = riderFormOnActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 16
    Top = 16
    Width = 993
    Height = 473
    ActivePage = TabSheet2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #21487#39046#21462#35746#21333
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 80
        Height = 20
        Caption = #35746#21333#21015#34920
      end
      object Label4: TLabel
        Left = 472
        Top = 48
        Width = 180
        Height = 20
        Caption = #36755#20837#35201#25509#21333#30340#35746#21333#21495
      end
      object Button1: TButton
        Left = 552
        Top = 288
        Width = 137
        Height = 49
        Caption = #28857#20987#25509#21333
        TabOrder = 0
        OnClick = Button1Click
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 56
        Width = 441
        Height = 289
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -20
        TitleFont.Name = #26999#20307
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 464
        Top = 104
        Width = 385
        Height = 28
        TabOrder = 2
        Text = 'order_id'
        OnClick = edit1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #26410#23436#25104#35746#21333
      ImageIndex = 1
      object Label2: TLabel
        Left = 32
        Top = 16
        Width = 80
        Height = 20
        Caption = #35746#21333#21015#34920
      end
      object Label5: TLabel
        Left = 448
        Top = 48
        Width = 180
        Height = 20
        Caption = #36755#20837#35201#32467#26463#30340#35746#21333#21495
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 56
        Width = 425
        Height = 289
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -20
        TitleFont.Name = #26999#20307
        TitleFont.Style = []
      end
      object Button3: TButton
        Left = 528
        Top = 272
        Width = 161
        Height = 49
        Caption = #27966#36865#23436#25104
        TabOrder = 1
        OnClick = Button3Click
      end
      object Edit2: TEdit
        Left = 448
        Top = 104
        Width = 385
        Height = 28
        TabOrder = 2
        Text = 'order_id'
        OnClick = edit2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #24050#23436#25104#35746#21333
      ImageIndex = 2
      object Label3: TLabel
        Left = 32
        Top = 16
        Width = 80
        Height = 20
        Caption = #35746#21333#35760#24405
      end
      object Label6: TLabel
        Left = 472
        Top = 48
        Width = 180
        Height = 20
        Caption = #36755#20837#35201#20462#25913#30340#35746#21333#21495
      end
      object DBGrid3: TDBGrid
        Left = 16
        Top = 56
        Width = 441
        Height = 289
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -20
        TitleFont.Name = #26999#20307
        TitleFont.Style = []
      end
      object Edit3: TEdit
        Left = 464
        Top = 104
        Width = 385
        Height = 28
        TabOrder = 1
        Text = 'order_id'
        OnClick = edit3Click
      end
      object Button2: TButton
        Left = 552
        Top = 248
        Width = 161
        Height = 49
        Caption = #21024#38500#35746#21333#35760#24405
        TabOrder = 2
        OnClick = Button2Click
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
        Caption = #39569#25163#22995#21517
      end
      object Label17: TLabel
        Left = 40
        Top = 112
        Width = 80
        Height = 20
        Caption = #36710#36742#31867#22411
      end
      object Label18: TLabel
        Left = 40
        Top = 200
        Width = 60
        Height = 20
        Caption = #36710#29260#21495
      end
      object Label19: TLabel
        Left = 40
        Top = 280
        Width = 80
        Height = 20
        Caption = #24037#20316#29366#24577
      end
      object infoNameEdit: TEdit
        Left = 160
        Top = 24
        Width = 281
        Height = 28
        TabOrder = 0
      end
      object infoVehicleEdit: TEdit
        Left = 160
        Top = 104
        Width = 281
        Height = 28
        TabOrder = 1
        Text = ' '
      end
      object infoLicenseEdit: TEdit
        Left = 160
        Top = 192
        Width = 281
        Height = 28
        TabOrder = 2
        Text = ' '
      end
      object infoAvailableEdit: TEdit
        Left = 160
        Top = 280
        Width = 281
        Height = 28
        TabOrder = 3
        Text = ' '
      end
      object Button5: TButton
        Left = 80
        Top = 317
        Width = 321
        Height = 65
        Caption = #20445#23384#20449#24687
        TabOrder = 4
        OnClick = Button5Click
      end
    end
  end
  object Button4: TButton
    Left = 888
    Top = 0
    Width = 113
    Height = 41
    Caption = #36864#20986#30331#24405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button4Click
  end
  object ADOQuery1: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <>
    Left = 484
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 452
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <>
    Left = 552
    Top = 8
  end
end
