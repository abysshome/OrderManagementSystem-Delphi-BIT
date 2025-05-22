object adminForm: TadminForm
  Left = 469
  Top = 184
  Width = 1050
  Height = 587
  Caption = #31649#29702#21592#34920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = adminFormOnActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 24
    Width = 1017
    Height = 481
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
      Caption = #29992#25143#20449#24687
      object PageControl2: TPageControl
        Left = -4
        Top = -4
        Width = 1013
        Height = 455
        ActivePage = TabSheet10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheet9: TTabSheet
          Caption = #39038#23458
          object Label1: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #39038#23458#21015#34920
          end
          object Label5: TLabel
            Left = 656
            Top = 16
            Width = 193
            Height = 20
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#39038#23458'ID'
          end
          object DBGrid1: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Edit1: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 28
            TabOrder = 1
          end
          object Button1: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button1Click
          end
          object DBNavigator3: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
        object TabSheet10: TTabSheet
          Caption = #39184#21381
          ImageIndex = 1
          object Label2: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #39184#21381#21015#34920
          end
          object Label6: TLabel
            Left = 656
            Top = 16
            Width = 225
            Height = 20
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#39184#21381'ID'
          end
          object DBGrid2: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Edit2: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 28
            TabOrder = 1
          end
          object Button4: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button4Click
          end
          object DBNavigator4: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
        object TabSheet11: TTabSheet
          Caption = #39569#25163
          ImageIndex = 2
          object Label3: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #39569#25163#21015#34920
          end
          object Label7: TLabel
            Left = 656
            Top = 16
            Width = 201
            Height = 20
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#39569#25163'ID'
          end
          object DBGrid3: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Edit3: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 28
            TabOrder = 1
          end
          object Button7: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button7Click
          end
          object DBNavigator5: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
        object TabSheet12: TTabSheet
          Caption = #31649#29702#21592
          ImageIndex = 3
          object Label4: TLabel
            Left = 24
            Top = 8
            Width = 121
            Height = 20
            AutoSize = False
            Caption = #31649#29702#21592#21015#34920
          end
          object Label8: TLabel
            Left = 656
            Top = 16
            Width = 225
            Height = 20
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#31649#29702#21592'ID'
          end
          object DBGrid4: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Edit4: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 28
            TabOrder = 1
          end
          object Button10: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button10Click
          end
          object DBNavigator2: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20132#26131#20449#24687
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = -4
        Top = 2
        Width = 1017
        Height = 453
        ActivePage = TabSheet13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = PageControl3Change
        object TabSheet13: TTabSheet
          Caption = #35746#21333#34920
          object Label9: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #35746#21333#21015#34920
          end
          object Label10: TLabel
            Left = 656
            Top = 16
            Width = 201
            Height = 16
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#35746#21333'ID'
          end
          object DBGrid5: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
          end
          object Edit5: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 24
            TabOrder = 1
          end
          object Button13: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button13Click
          end
          object DBNavigator6: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
        object TabSheet4: TTabSheet
          Caption = #37197#36865#34920
          ImageIndex = 2
          object Label13: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #37197#36865#21015#34920
          end
          object Label14: TLabel
            Left = 656
            Top = 16
            Width = 177
            Height = 16
            AutoSize = False
            Caption = #36873#25321#35201#32534#36753#30340#37197#36865#21333'ID'
          end
          object DBGrid7: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
          end
          object Edit7: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 24
            TabOrder = 1
          end
          object Button2: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button2Click
          end
          object DBNavigator7: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
        object TabSheet5: TTabSheet
          Caption = #25903#20184#34920
          ImageIndex = 3
          object Label15: TLabel
            Left = 24
            Top = 8
            Width = 89
            Height = 20
            AutoSize = False
            Caption = #25903#20184#21015#34920
          end
          object Label16: TLabel
            Left = 656
            Top = 16
            Width = 144
            Height = 16
            Caption = #36873#25321#35201#32534#36753#30340#24080#21333'ID'
          end
          object DBGrid8: TDBGrid
            Left = 16
            Top = 40
            Width = 617
            Height = 345
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
          end
          object Edit8: TEdit
            Left = 656
            Top = 48
            Width = 217
            Height = 24
            TabOrder = 1
          end
          object Button20: TButton
            Left = 656
            Top = 128
            Width = 137
            Height = 49
            Caption = #21024#38500
            TabOrder = 2
            OnClick = Button20Click
          end
          object DBNavigator1: TDBNavigator
            Left = 16
            Top = 384
            Width = 610
            Height = 33
            DataSource = DataSource1
            TabOrder = 3
          end
        end
      end
    end
  end
  object Button3: TButton
    Left = 888
    Top = 8
    Width = 121
    Height = 41
    Caption = #36864#20986#30331#24405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    Connection = mainForm.ADOConnection1
    Parameters = <>
    Left = 384
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
  end
end
