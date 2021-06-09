unit userClass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Dialogs;
type

  { TUserInfo }

  TUserInfo = class
    public
      constructor Create;
      destructor Destory;

      procedure LoadData;
      procedure InsertData;
      procedure UpdateData(id:String);
      procedure DeleteData(id:String);
  end;

implementation
uses
  user,secretQ;
{ TUserInfo }

constructor TUserInfo.Create;
begin

end;

destructor TUserInfo.Destory;
begin

end;

procedure TUserInfo.LoadData;
var
  row : integer;
begin
  try
     Form7.userMysql.Connected:= true;
     Form7.userQuery.SQL.Text:= 'SELECT * FROM users';
     Form7.userQuery.Open;

     Form7.userGrid.RowCount:= 1;

     while not Form7.userQuery.EOF do begin
       row := Form7.userGrid.RowCount;
       Form7.userGrid.RowCount := row + 1;
       Form7.userGrid.Cells[0,0] := 'No.';
       Form7.userGrid.Cells[0,row] := row.ToString;
       Form7.userGrid.Cells[1, row] := Form7.userQuery.Fields[1].AsAnsiString;
       Form7.userGrid.Cells[2, row] := Form7.userQuery.Fields[2].AsAnsiString;
       Form7.userGrid.Cells[3, row] := Form7.userQuery.Fields[3].AsAnsiString;
       Form7.userGrid.Cells[4, row] := Form7.userQuery.Fields[4].AsAnsiString;
       Form7.userGrid.Cells[5, row] := Form7.userQuery.Fields[5].AsAnsiString;
       Form7.userGrid.Cells[6, row] := Form7.userQuery.Fields[6].AsAnsiString;
       Form7.userGrid.Cells[7, row] := Form7.userQuery.Fields[0].AsAnsiString;
       Form7.userQuery.Next;
     end;
  finally
     Form7.userQuery.Close;
     Form7.userMysql.Connected:= false;
  end;
end;

procedure TUserInfo.InsertData;
begin
  try
     Form7.userMysql.Connected:= true;
     Form7.userQuery.SQL.Text:= 'INSERT INTO users '+
     '(employeeCode,fullName,address,rights,contactnumber,password,fristQ,secondeQ,thirdQ,firstAns,secondAns,thirdAns) '+
     'values (:employeeCode,:fullName,:address,:rights,:contactnumber,:password,:fristQ,:secondeQ,:thirdQ,:firstAns,:secondAns,:thirdAns)';
     Form7.userQuery.Params.ParamByName('employeeCode').AsString       := Form7.userCode.Text;
     Form7.userQuery.Params.ParamByName('fullName').AsString           := Form7.userName.Text;
     Form7.userQuery.Params.ParamByName('address').AsString            := Form7.userAddress.Text;
     Form7.userQuery.Params.ParamByName('rights').AsString             := Form7.userRights.Text;
     Form7.userQuery.Params.ParamByName('contactnumber').AsString      := Form7.userNo.Text;
     Form7.userQuery.Params.ParamByName('password').AsString           := Form7.userPassword.Text;

     Form7.userQuery.Params.ParamByName('fristQ').AsString             := Form9.secQ1.Text;
     Form7.userQuery.Params.ParamByName('secondeQ').AsString           := Form9.secQ2.Text;
     Form7.userQuery.Params.ParamByName('thirdQ').AsString             := Form9.secQ3.Text;
     Form7.userQuery.Params.ParamByName('firstAns').AsString           := Form9.Ans1.Text;
     Form7.userQuery.Params.ParamByName('secondAns').AsString          := Form9.Ans2.Text;
     Form7.userQuery.Params.ParamByName('thirdAns').AsString           := Form9.Ans3.Text;

     Form7.userQuery.ExecSQL;
     Form7.userTransaction.Commit;
  finally
     showmessage('User Added!');
     Form7.userMysql.Connected:= false;


     Form7.userCode.Text := '';
     Form7.userName.Text := '';
     Form7.userAddress.Text := '';
     Form7.userRights.Text := '0';
     Form7.userNo.Text := '';
     Form7.userPassword.Text := '';
     Form7.btnAdd.Enabled:= False;

     Form9.Ans1.Text := '';
     Form9.Ans2.Text := '';
     Form9.Ans3.Text := '';
     Form9.secQ1.Text:= '';
     Form9.secQ2.Text:= '';
     Form9.secQ3.Text:= '';
  end;
end;

procedure TUserInfo.UpdateData(id:String);
begin
  try
       Form7.userMysql.Connected:= true;
       Form7.userQuery.SQL.Text:= 'Update users SET '+
       'employeeCode = :employeeCode,'+
       'fullName = :fullName,'+
       'address = :address,'+
       'rights = :rights,'+
       'contactnumber = :contactnumber,'+
       'password = :password WHERE id = :id';
       Form7.userQuery.Params.ParamByName('employeeCode').AsString       := Form7.userCode.Text;
       Form7.userQuery.Params.ParamByName('fullName').AsString           := Form7.userName.Text;
       Form7.userQuery.Params.ParamByName('address').AsString            := Form7.userAddress.Text;
       Form7.userQuery.Params.ParamByName('rights').AsString             := Form7.userRights.Text;
       Form7.userQuery.Params.ParamByName('contactnumber').AsString      := Form7.userNo.Text;
       Form7.userQuery.Params.ParamByName('password').AsString           := Form7.userPassword.Text;
       Form7.userQuery.Params.ParamByName('id').AsString                 := id;
       Form7.userQuery.ExecSQL;
       Form7.userTransaction.Commit;
    finally
       showmessage('User Updated!');
       Form7.userMysql.Connected:= false;

       Form7.userCode.Text := '';
       Form7.userName.Text := '';
       Form7.userAddress.Text := '';
       Form7.userRights.Text := '0';
       Form7.userNo.Text := '';
       Form7.userPassword.Text := '';

       Form7.btnAdd.Enabled:= False;
       Form7.btnUpdate.Enabled:= False;
    end;
end;

procedure TUserInfo.DeleteData(id:String);
begin
    try
       Form7.userMysql.Connected:= true;
       Form7.userQuery.SQL.Text:= 'DELETE FROM users WHERE id = :id';

       Form7.userQuery.Params.ParamByName('id').AsString                 := id;
       Form7.userQuery.ExecSQL;
       Form7.userTransaction.Commit;
    finally
       showmessage('User Deleted!');
       Form7.userMysql.Connected:= false;

       Form7.userCode.Text := '';
       Form7.userName.Text := '';
       Form7.userAddress.Text := '';
       Form7.userRights.Text := '0';
       Form7.userNo.Text := '';
       Form7.userPassword.Text := '';

       Form7.btnAdd.Enabled:= False;
       Form7.btnUpdate.Enabled:= False;
    end;
end;

end.

