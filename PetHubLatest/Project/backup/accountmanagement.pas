unit AccountManagement;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Grids, StdCtrls, Process;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    edtSearch: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image5: TImage;
    Label1: TLabel;
    adinMysql: TMySQL57Connection;
    adminQuery: TSQLQuery;
    adminTransaction: TSQLTransaction;
    adminGrid: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure FormShow(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation
uses
  adminclass,
  user;
{$R *.lfm}

{ TForm6 }

procedure TForm6.FormShow(Sender: TObject);
var
  admin : TAdminInfo;
begin
  self.ShowInTaskBar:= stAlways;
  admin := TAdminInfo.Create;
  admin.loadData(self.edtSearch.Text);
end;

procedure TForm6.Button1Click(Sender: TObject);
var
  admin : TAdminInfo;
begin
  admin := TAdminInfo.Create;
  admin.loadData(self.edtSearch.Text);
end;

procedure TForm6.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  admin : TAdminInfo;
begin
  admin := TAdminInfo.Create;
  admin.loadData(self.edtSearch.Text);
end;


procedure TForm6.Image5Click(Sender: TObject);
begin
     Form7.ShowModal;
end;

end.

