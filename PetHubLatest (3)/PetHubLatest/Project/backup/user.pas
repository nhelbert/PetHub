unit user;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  Grids, ExtCtrls, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    btnAdd: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    userRights: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    userMysql: TMySQL57Connection;
    userPassword: TLabeledEdit;
    userQuery: TSQLQuery;
    userTransaction: TSQLTransaction;
    userCode: TLabeledEdit;
    userName: TLabeledEdit;
    userNo: TLabeledEdit;
    userAddress: TLabeledEdit;
    userGrid: TStringGrid;
    procedure btnAddClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure userAddressKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure userCodeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure userGridDblClick(Sender: TObject);
    procedure userNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure userNoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure userPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

  public

  end;

var
  Form7: TForm7;

implementation
uses
  userClass,secretQ;
{$R *.lfm}

{ TForm7 }

procedure TForm7.btnAddClick(Sender: TObject);
begin
  Form9.ShowModal;
end;

procedure TForm7.btnUpdateClick(Sender: TObject);
var
  aCol : integer;
  userData : TUserInfo;
begin
  aCol := self.userGrid.Row;
  userData := TUserInfo.Create;
  userData.UpdateData(self.userGrid.Cells[7,aCol]);
  userData.loadData;
end;

procedure TForm7.btnDeleteClick(Sender: TObject);
var
  aCol : integer;
  userData : TUserInfo;
begin
  aCol := self.userGrid.Row;
  userData := TUserInfo.Create;
  userData.DeleteData(self.userGrid.Cells[7,aCol]);
  userData.loadData;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  userData : TUserInfo;
begin
  self.userCode.NumbersOnly:= True;
  userData := TUserInfo.Create;
  userData.loadData;
end;

procedure TForm7.userAddressKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(self.userCode.Text = '') or
     (self.userName.Text = '') or
     (self.userAddress.Text = '') or
     (self.userNo.Text = '') or
     (self.userPassword.Text = '')then
  begin
       self.btnAdd.Enabled:= false;
  end
  else
  begin
      self.btnAdd.Enabled:= true;
  end;
end;

procedure TForm7.userCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(self.userCode.Text = '') or
     (self.userName.Text = '') or
     (self.userAddress.Text = '') or
     (self.userNo.Text = '') or
     (self.userPassword.Text = '')then
  begin
       self.btnAdd.Enabled:= false;
  end
  else
  begin
      self.btnAdd.Enabled:= true;
  end;
end;

procedure TForm7.userGridDblClick(Sender: TObject);
var
  aCol : integer;
begin
  aCol := self.userGrid.Row;

  self.userCode.Text     := self.userGrid.Cells[1,aCol];
  self.userName.Text     := self.userGrid.Cells[2,aCol];
  self.userAddress.Text  := self.userGrid.Cells[3,aCol];
  self.userRights.Text   := self.userGrid.Cells[4,aCol];
  self.userNo.Text       := self.userGrid.Cells[5,aCol];
  self.userPassword.Text := self.userGrid.Cells[6,aCol];
  self.btnUpdate.Enabled:= True;
  self.btnDelete.Enabled:= True;
end;

procedure TForm7.userNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(self.userCode.Text = '') or
     (self.userName.Text = '') or
     (self.userAddress.Text = '') or
     (self.userNo.Text = '') or
     (self.userPassword.Text = '')then
  begin
       self.btnAdd.Enabled:= false;
  end
  else
  begin
      self.btnAdd.Enabled:= true;
  end;
end;

procedure TForm7.userNoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if(self.userCode.Text = '') or
     (self.userName.Text = '') or
     (self.userAddress.Text = '') or
     (self.userNo.Text = '') or
     (self.userPassword.Text = '')then
  begin
       self.btnAdd.Enabled:= false;
  end
  else
  begin
      self.btnAdd.Enabled:= true;
  end;
end;

procedure TForm7.userPasswordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(self.userCode.Text = '') or
     (self.userName.Text = '') or
     (self.userAddress.Text = '') or
     (self.userNo.Text = '') or
     (self.userPassword.Text = '')then
  begin
       self.btnAdd.Enabled:= false;
  end
  else
  begin
      self.btnAdd.Enabled:= true;
  end;
end;



end.

