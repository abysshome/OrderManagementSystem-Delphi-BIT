unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls, ExtCtrls, DBCtrls,Math;

type
  TadminForm = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    TabSheet10: TTabSheet;
    Label2: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Edit2: TEdit;
    Button4: TButton;
    TabSheet11: TTabSheet;
    Label3: TLabel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    Edit3: TEdit;
    Button7: TButton;
    TabSheet12: TTabSheet;
    Label4: TLabel;
    Label8: TLabel;
    DBGrid4: TDBGrid;
    Edit4: TEdit;
    Button10: TButton;
    TabSheet2: TTabSheet;
    PageControl3: TPageControl;
    TabSheet13: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    DBGrid5: TDBGrid;
    Edit5: TEdit;
    Button13: TButton;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid7: TDBGrid;
    Edit7: TEdit;
    Button2: TButton;
    TabSheet5: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid8: TDBGrid;
    Edit8: TEdit;
    Button20: TButton;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    Button3: TButton;
    procedure PageControl2Change(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure adminFormOnActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adminForm: TadminForm;
  query:String;

implementation
uses unit1,unit2;

{$R *.dfm}
procedure AutoFitColumns(DBGrid: TDBGrid; DataSource: TDataSource);
var
  i, ColWidth, TitleWidth, DataWidth: Integer;
  Field: TField;
  DataSet: TDataSet;
begin
  DataSet := DataSource.DataSet;

  // 检查数据集是否为空或没有字段
  if (DataSet = nil) or (DataSet.FieldCount = 0) then
    Exit;

  // 清除现有列（防止索引超出范围）
  DBGrid.Columns.Clear;

  // 遍历每一个字段，动态添加列并调整宽度
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    // 动态添加列
    with DBGrid.Columns.Add do
    begin
      FieldName := DataSet.Fields[i].FieldName;

      // 设置初始列宽为标题的宽度
      TitleWidth := DBGrid.Canvas.TextWidth(DataSet.Fields[i].DisplayName) + 8;
      ColWidth := TitleWidth;

      // 遍历每一条记录，计算字段值的最大宽度
      DataSet.DisableControls;
      try
        DataSet.First;
        while not DataSet.Eof do
        begin
          DataWidth := DBGrid.Canvas.TextWidth(DataSet.Fields[i].AsString) + 8;
          ColWidth := Max(ColWidth, DataWidth);
          DataSet.Next;
        end;
      finally
        DataSet.EnableControls;
      end;

      // 设置列宽
      Width := ColWidth;
    end;
  end;
end;



procedure TadminForm.PageControl1Change(Sender: TObject);
begin
  case pageControl1.ActivePageIndex of
  0:
    begin
    case pageControl2.ActivePageIndex of
      0:
        begin
        ADOQuery1.SQL.Text:='Select * From customers';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid1, DataSource1);
        end;
      1:
        begin
        ADOQuery1.SQL.Text:='Select * From restaurants';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid2, DataSource1);
        end;
      2:
        begin
        ADOQuery1.SQL.Text:='Select * From riders';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid3, DataSource1);
        end;
      3:
        begin
        ADOQuery1.SQL.Text:='Select * From admins';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid4, DataSource1);
        end;
    end;
    end;
  1:
    begin
    case pageControl3.ActivePageIndex of
      0:
        begin
        ADOQuery1.SQL.Text:='Select * From orders';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid5, DataSource1);
        end;
      1:
        begin
        ADOQuery1.SQL.Text:='Select * From deliveries';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid7, DataSource1);
        end;
      2:
        begin
        ADOQuery1.SQL.Text:='Select * From payments';
        ADOQuery1.Open;
        AutoFitColumns(DBGrid8, DataSource1);
        end;
    end;
    end;
  end;
end;

procedure TadminForm.PageControl2Change(Sender: TObject);
begin
  if (PageControl2.ActivePageIndex >= 0) and (PageControl2.ActivePageIndex < PageControl2.PageCount) then
  begin
    case PageControl1.ActivePageIndex of
      0:
        begin
          case PageControl2.ActivePageIndex of
            0:
              begin
                ADOQuery1.SQL.Text := 'Select * From customers';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid1, DataSource1);
              end;
            1:
              begin
                ADOQuery1.SQL.Text := 'Select * From restaurants';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid2, DataSource1);
              end;
            2:
              begin
                ADOQuery1.SQL.Text := 'Select * From riders';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid3, DataSource1);
              end;
            3:
              begin
                ADOQuery1.SQL.Text := 'Select * From admins';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid4, DataSource1);
              end;
          end;
        end;
      1:
        begin
          case PageControl3.ActivePageIndex of
            0:
              begin
                ADOQuery1.SQL.Text := 'Select * From orders';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid5, DataSource1);
              end;
            1:
              begin
                ADOQuery1.SQL.Text := 'Select * From deliveries';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid7, DataSource1);
              end;
            2:
              begin
                ADOQuery1.SQL.Text := 'Select * From payments';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid8, DataSource1);
              end;
          end;
        end;
    end;
  end
  else
  begin
    ShowMessage('Invalid PageControl2 index.');
  end;
end;

procedure TadminForm.PageControl3Change(Sender: TObject);
begin
  if (PageControl3.ActivePageIndex >= 0) and (PageControl3.ActivePageIndex < PageControl3.PageCount) then
  begin
    case PageControl1.ActivePageIndex of
      0:
        begin
          case PageControl2.ActivePageIndex of
            0:
              begin
                ADOQuery1.SQL.Text := 'Select * From customers';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid1, DataSource1);
              end;
            1:
              begin
                ADOQuery1.SQL.Text := 'Select * From restaurants';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid2, DataSource1);
              end;
            2:
              begin
                ADOQuery1.SQL.Text := 'Select * From riders';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid3, DataSource1);
              end;
            3:
              begin
                ADOQuery1.SQL.Text := 'Select * From admins';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid4, DataSource1);
              end;
          end;
        end;
      1:
        begin
          case PageControl3.ActivePageIndex of
            0:
              begin
                ADOQuery1.SQL.Text := 'Select * From orders';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid5, DataSource1);
              end;
            1:
              begin
                ADOQuery1.SQL.Text := 'Select * From deliveries';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid7, DataSource1);
              end;
            2:
              begin
                ADOQuery1.SQL.Text := 'Select * From payments';
                ADOQuery1.Open;
                AutoFitColumns(DBGrid8, DataSource1);
              end;
          end;
        end;
    end;
  end
  else
  begin
    ShowMessage('Invalid PageControl3 index.');
  end;
end;


procedure TadminForm.Button1Click(Sender: TObject);
begin
  query:=Format('Delete From customers where id=%d',[StrToInt(Edit1.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From customers';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid1, DataSource1);
end;

procedure TadminForm.Button4Click(Sender: TObject);
begin
  query:=Format('Delete From restaurants where id=%d',[StrToInt(Edit2.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From restaurants';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid2, DataSource1);
end;

procedure TadminForm.Button7Click(Sender: TObject);
begin
  query:=Format('Delete From riders where id=%d',[StrToInt(Edit3.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From riders';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid3, DataSource1);
end;

procedure TadminForm.Button10Click(Sender: TObject);
begin
  query:=Format('Delete From admins where id=%d',[StrToInt(Edit4.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From admins';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid4, DataSource1);
end;

procedure TadminForm.Button13Click(Sender: TObject);
begin
  query:=Format('Delete From orders where id=%d',[StrToInt(Edit5.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From orders';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid5, DataSource1);
end;

procedure TadminForm.Button2Click(Sender: TObject);
begin
  query:=Format('Delete From deliveries where id=%d',[StrToInt(Edit7.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From deliveries';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid7, DataSource1);
end;

procedure TadminForm.Button20Click(Sender: TObject);
begin
  query:=Format('Delete From payments where id=%d',[StrToInt(Edit8.Text)]);
  ADOquery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Text:='Select * From payments';
  ADOQuery1.Open;
  AutoFitColumns(DBGrid8, DataSource1);
end;

procedure TadminForm.adminFormOnActivate(Sender: TObject);
begin
    pageControl1.ActivePageIndex:=0;
    pageControl2.ActivePageIndex:=0;
    ADOQuery1.SQL.Text:='Select * From customers';
    ADOQuery1.Open;
    AutoFitColumns(DBGrid1, DataSource1);
end;

procedure TadminForm.Button3Click(Sender: TObject);
begin
  adminForm.Hide;
  mainForm.Show;
end;

end.
