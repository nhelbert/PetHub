unit adminclass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Dialogs;

type

  { TAdminInfo }

  TAdminInfo = class
    public
      constructor Create;
      destructor Destroy;

      procedure loadData;
  end;

implementation
uses
  AccountManagement;
{ TAdminInfo }

constructor TAdminInfo.Create;
begin

end;

destructor TAdminInfo.Destroy;
begin

end;

procedure TAdminInfo.loadData;
var
  row : integer;
begin
     try
        Form6.adinMysql.Connected:= True;
        Form6.adminQuery.SQL.Text:= 'SELECT * FROM useractivity';
        Form6.adminQuery.Open;

        Form6.adminGrid.RowCount:= 1;
        while not Form6.adminQuery.EOF do begin
          row := Form6.adminGrid.RowCount;
          Form6.adminGrid.RowCount := row + 1;
          Form6.adminGrid.Cells[0,0] := 'No.';
          Form6.adminGrid.Cells[0,row] := row.ToString;
          Form6.adminGrid.Cells[1, row] := Form6.adminQuery.Fields[1].AsAnsiString;
          Form6.adminGrid.Cells[2, row] := Form6.adminQuery.Fields[2].AsAnsiString;
          Form6.adminGrid.Cells[3, row] := Form6.adminQuery.Fields[3].AsAnsiString;
          Form6.adminQuery.Next;
        end;
     finally
         Form6.adminQuery.Close;
         Form6.adinMysql.Connected:= False;
     end;
end;

end.

