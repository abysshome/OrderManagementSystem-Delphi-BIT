unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,
  DB, DBTables, Menus, ADODB,Math;

type
  TcustomerForm = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Button3: TButton;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Button6: TButton;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Button4: TButton;
    TabSheet4: TTabSheet;
    Label16: TLabel;
    infoNameEdit: TEdit;
    Label17: TLabel;
    infoAddressEdit: TEdit;
    Label18: TLabel;
    infoPaymentEdit: TEdit;
    Button7: TButton;
    OKButton: TButton;
    Button2: TButton;
    Button5: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure customerFormOnActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  customerForm: TcustomerForm;
  query:String;
  num:integer;
  price,prices:Single;

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


procedure TcustomerForm.OKButtonClick(Sender: TObject);
begin
  query:=Format('update orders set status =''completed'' where id=%d',[StrToInt(Edit4.Text)]);
  ADOQuery2.SQL.Text:=query;
  ADOQuery2.ExecSQL;
  query:=Format('Select * From user_unpaid_orders where customer_id = %d and (order_status in(''placed'',''preparing'',''delivering'') or payment_status=''pending'')',[unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQuery1.Open;
  AutoFitColumns(DBGrid2, DataSource1);
end;

procedure TcustomerForm.Edit1Click(Sender: TObject);
begin
  Edit1.Text:='';
end;

procedure TcustomerForm.Edit2Change(Sender: TObject);
begin
  query:=Format('Select * From menu_items where restaurant_id=%d and name=''%s''',[StrToInt(Edit1.Text),ComboBox1.Text]);
  ADOQuery2.SQL.Text:=query;
  // 打开查询
  ADOQuery2.Open;

  // 检查是否找到记录
  if not ADOQuery2.Eof then
  begin
    // 显示找到的记录的其他字段值
    price := ADOQuery2.FieldByName('price').AsFloat;
    if edit2.Text ='' then
      num:=1
    else
      num:=StrToInt(Edit2.Text);
    prices:=price*num;
    Edit3.Text:=FloatToStrF(prices, ffFixed, 15, 2);;
  end
  else
  begin
    // 未找到记录，清空显示字段或显示提示
    Edit3.Text := '未找到记录';
  end;

  // 关闭查询
  ADOQuery2.Close;
end;

procedure TcustomerForm.Button1Click(Sender: TObject);
var
 orderId:Integer;
begin
  query:=Format('INSERT INTO orders(customer_id, restaurant_id, total_amount, status, created_at) values (%d, %d, %f, ''%s'', ''%s'')',[unit2.user_id,StrToInt(edit1.Text),StrToFloat(edit3.Text),'placed',DateTimeToStr(now)]);
  ADOQuery2.SQL.Text:=query;
  ADOQuery2.ExecSQL;
  ADOQuery2.SQL.Text:='Select Max(id) AS last_order_id From orders';
  ADOQuery2.open;
  orderId:=ADOQuery2.FieldByName('last_order_id').AsInteger;
  query:=Format('insert into deliveries (order_id, delivery_status, menu_item_name, quantity, price) values (%d,''pending'',''%s'',%d,%f)',[orderId,combobox1.Text,num,prices]);
  ADOquery2.SQL.Text:=query;
  ADOQuery2.ExecSQL;
  showMessage('订单创建成功');
end;

procedure TcustomerForm.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
      query:=Format('Select * From restaurants',[]);
      ADOQuery1.SQL.Text:=query;
      ADOQuery1.Open;
      AutoFitColumns(DBGrid1, DataSource1);
      end;
    1:
      begin
      query:=Format('Select * From user_unpaid_orders where customer_id = %d and (order_status in(''placed'',''preparing'',''delivering'') or payment_status=''pending'')',[unit2.user_id]);
      ADOQuery1.SQL.Text:=query;
      ADOQuery1.Open;
      AutoFitColumns(DBGrid2, DataSource1);
      end;
    2:
      begin
      query:=Format('Select * From orders where customer_id = %d and status=''completed''',[unit2.user_id]);
      ADOQuery1.SQL.Text:=query;
      ADOQuery1.Open;
      AutoFitColumns(DBGrid3, DataSource1);
      end;
    3:
      begin
      infoNameEdit.Text:=unit2.username;
      query:=Format('Select * From customers where id=%d',[unit2.user_id]);
      ADOQuery1.SQL.Text:=query;
      ADOQuery1.Open;
      infoAddressEdit.Text:=ADOQuery1.FieldByName('address').AsString;
      infoPaymentEdit.Text:=ADOQuery1.FieldByName('payment_method').AsString;
      end;
  end;
end;

procedure TcustomerForm.customerFormOnActivate(Sender: TObject);
begin
   PageControl1.ActivePageIndex:=0;
   query:=Format('Select * From restaurants',[]);
   ADOQuery1.SQL.Text:=query;
   ADOQuery1.Open;
   AutoFitColumns(DBGrid1, DataSource1);
end;

procedure TcustomerForm.Button3Click(Sender: TObject);
begin
  query:=Format('update orders set status =''cancelled'' where id=%d',[StrToInt(Edit4.Text)]);
  ADOQuery2.SQL.Text:=query;
  ADOQuery2.ExecSQL;
  query:=Format('Select * From user_unpaid_orders where customer_id = %d and (order_status in(''placed'',''preparing'',''delivering'') or payment_status=''pending'')',[unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQuery1.Open;
  AutoFitColumns(DBGrid2, DataSource1);
end;

procedure TcustomerForm.Button7Click(Sender: TObject);
begin
  query:=Format('Update users set username=''%s'' where id=%d',[infoNameEdit.Text,unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQuery1.ExecSQL;
  query:=Format('Update customers set address=''%s'',payment_method=''%s'' where id=%d',[infoAddressEdit.Text,infoPaymentEdit.Text,unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQUery1.ExecSQL;
  username:=infoNameEdit.Text;
end;

procedure TcustomerForm.Button6Click(Sender: TObject);
begin
  query:=Format('delete From orders where id=%d',[StrToInt(edit5.Text)]);
  ADOQuery2.SQL.Text:=query;
  ADOQUery2.ExecSQL;
  query:=Format('Select * From orders where customer_id = %d and status=''completed''',[unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQuery1.Open;
  AutoFitColumns(DBGrid3, DataSource1);
end;

procedure TcustomerForm.Button4Click(Sender: TObject);
begin
  query:=Format('update payments set payment_status=''completed''where order_id=%d',[StrToInt(edit4.Text)]);
  ADOQuery2.SQL.Text:=query;
  ADOQuery2.ExecSQL;
  query:=Format('Select * From user_unpaid_orders where customer_id = %d and (order_status in(''placed'',''preparing'',''delivering'') or payment_status=''pending'')',[unit2.user_id]);
  ADOQuery1.SQL.Text:=query;
  ADOQuery1.Open;
  AutoFitColumns(DBGrid2, DataSource1);
end;

procedure TcustomerForm.Edit1Change(Sender: TObject);
var
  resId:Integer;
begin
  if(Edit1.Text='') then
  begin
    resId:=1029;
  end
  else
  begin
    resId:=StrToInt(Edit1.Text);
  end;
  query:=Format('Select * From menu_items where restaurant_id= %d',[resId]);
  ADOQuery2.SQL.Text:=query;
  ADOQuery2.Open;
  // 清空ComboBox
  ComboBox1.Clear;

  // 将查询结果添加到ComboBox中
  while not ADOQuery2.Eof do
  begin
    ComboBox1.Items.Add(ADOQuery2.FieldByName('name').AsString);
    ADOQuery2.Next;
  end;
  // 关闭查询
  ADOQuery2.Close;
end;

procedure TcustomerForm.Button5Click(Sender: TObject);
begin
  customerForm.Hide;
  mainForm.Show;
end;

end.
