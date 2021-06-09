unit Login;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, SQLDB, MainForm, information, mysql57conn;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    empCode: TEdit;
    Label3: TLabel;
    password: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    loginmysql: TMySQL57Connection;
    loginquery: TSQLQuery;
    logintransaction: TSQLTransaction;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses
  Forgot;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
  information : TInformation;
begin
  i := 0;
  information := TInformation.Create;
  try
     loginmysql.Connected:= true;
     loginquery.SQL.Text := 'select * from users where employeeCode = '+ quotedstr(self.empCode.Text)+' and password = '+quotedstr(self.password.Text) ;
     loginquery.Open;

     while not loginquery.EOF do begin
       Inc(i);

       information.employeeCode  := loginquery.Fields[1].AsAnsiString;
       information.fullName      := loginquery.Fields[2].AsAnsiString;
       information.address       := loginquery.Fields[3].AsAnsiString;
       information.rights        := loginquery.Fields[4].AsAnsiString;
       information.contactnumber := loginquery.Fields[5].AsAnsiString;


       loginquery.Next;
     end;
  finally
     loginquery.Close;
     loginmysql.Connected:= false;

     if(i = 0)then
     begin
        showmessage('Not registered!');
     end
     else
     begin
        showmessage('Welcome! ' + information.fullName);
        self.Hide;
        Form2.Show;
     end;

  end;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  i: integer;
  information : TInformation;
begin
  i := 0;
  information := TInformation.Create;
  try
     loginmysql.Connected:= true;
     loginquery.SQL.Text := 'select * from users where employeeCode = '+ quotedstr(self.empCode.Text)+' and password = '+quotedstr(self.password.Text) ;
     loginquery.Open;

     while not loginquery.EOF do begin
       Inc(i);




       loginquery.Next;
       information.employeeCode  := loginquery.Fields[1].AsAnsiString;
       information.fullName      := loginquery.Fields[2].AsAnsiString;
       information.address       := loginquery.Fields[3].AsAnsiString;
       information.rights        := loginquery.Fields[4].AsAnsiString;
       information.contactnumber := loginquery.Fields[5].AsAnsiString;
     end;
  finally
     loginquery.Close;
     loginmysql.Connected:= false;

     if(i = 0)then
     begin
        showmessage('Not registered!');
     end
     else
     begin
        showmessage('Welcome! ' + information.fullName);
        Form2.lblUserName.Caption := information.fullName;
        Form2.lblrights.Caption   := information.rights;
        self.empCode.Text:= '';
        self.password.Text:= '';
        self.Hide;
        Form2.Show;
        information.insertActivity('Log-in');
     end;

  end;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  self.password.PasswordChar := Chr(149);
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
     Form10.Show;
end;

end.

