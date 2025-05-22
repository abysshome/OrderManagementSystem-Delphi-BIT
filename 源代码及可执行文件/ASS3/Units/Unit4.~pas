unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TregisterForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Edit3: TEdit;
    Label3: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  registerForm: TregisterForm;

implementation

uses unit2,unit1;

{$R *.dfm}

procedure TregisterForm.Button1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  RadioGroup1.ItemIndex:=-1;
  registerForm.Hide;
  loginForm.show;
end;

procedure TregisterForm.Button2Click(Sender: TObject);
var
username,password,phone,userType:String;
begin
  ADOQuery2.Parameters[0].Value:=Edit1.Text;
  ADOQuery2.Open;
  if ADOQuery2.FieldByName('UserCount').AsInteger > 0 then
  begin
    ShowMessage('Username already exists. Please choose a different username.'+ADOQuery2.Parameters[0].Value);
    Edit1.Text:='';
    ADOQuery2.Close;   // 关闭查询
    Exit; // 用户名已存在，立即退出过程
  end;
  ADOQuery2.Close;
  ADOQuery1.Parameters[0].Value:=Edit1.Text;
  ADOQuery1.Parameters[1].Value:=Edit2.Text;
  ADOQuery1.Parameters[2].Value:=Edit3.Text;
  case RadioGroup1.ItemIndex of
    0:ADOQuery1.Parameters[3].Value:='customer';
    2:ADOQuery1.Parameters[3].Value:='rider';
    1:ADOQuery1.Parameters[3].Value:='restaurant';
  end;
  ADOQuery1.Parameters[4].Value:=Now;
  ADOQuery1.ExecSQL;
  showMessage('注册成功，请重新登录');
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  unit1.userClass:=RadioGroup1.ItemIndex;
  RadioGroup1.ItemIndex:=-1;
  registerForm.Hide;
  loginForm.Show;
end;

end.
