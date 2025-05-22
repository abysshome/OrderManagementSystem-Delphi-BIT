unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Buttons, jpeg, ExtCtrls, DB, ADODB,IniFiles;

type
  TmainForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    LB1: TBitBtn;
    LB2: TBitBtn;
    LB3: TBitBtn;
    GroupBox2: TGroupBox;
    LB4: TBitBtn;
    ADOConnection1: TADOConnection;
    procedure LB1Click(Sender: TObject);
    procedure LB2Click(Sender: TObject);
    procedure LB3Click(Sender: TObject);
    procedure LB4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;
  username:String;
  password:String;
  userClass:integer;

implementation

uses unit2;

{$R *.dfm}
procedure TmainForm.LB1Click(Sender: TObject);
begin
  userclass:=0;
  mainForm.Hide;
  if loginForm.Visible then
    loginForm.hide;
  loginForm.show;
end;

procedure TmainForm.LB2Click(Sender: TObject);
begin
  userclass:=1;
  mainForm.Hide;
  if loginForm.Visible then
    loginForm.hide;
  loginForm.show;
end;

procedure TmainForm.LB3Click(Sender: TObject);
begin
  userclass:=2;
  mainForm.Hide;
  if loginForm.Visible then
    loginForm.hide;
  loginForm.show;
end;

procedure TmainForm.LB4Click(Sender: TObject);
begin
  userclass:=3;
  mainForm.Hide;
  if loginForm.Visible then
    loginForm.hide;
  loginForm.show;
end;

procedure TmainForm.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  CString: string;
  IniFilePath: string;
begin
    IniFilePath := ExtractFilePath(ParamStr(0)) + 'connection.ini';
    //showMessage(IniFilePath);
    IniFile:= TIniFile.Create(IniFilePath);
    CString := 'Provider=' + IniFile.ReadString('Database', 'Provider', '') + ';' +
                          'Password=' + IniFile.ReadString('Database', 'Password', '') + ';' +
                          'Persist Security Info=' + IniFile.ReadString('Database', 'Persist Security Info', '') + ';' +
                          'User ID=' + IniFile.ReadString('Database', 'User ID', '') + ';' +
                          'Data Source=' + IniFile.ReadString('Database', 'Data Source', '') + ';' +
                          'Initial Catalog=' + IniFile.ReadString('Database', 'Initial Catalog', '');
    //showMessage(CString);
    ADOConnection1.ConnectionString := CString;
    ADOConnection1.Connected := True; // 建立连接
end;

end.
