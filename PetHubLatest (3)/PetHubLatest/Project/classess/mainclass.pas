unit mainClass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs, DateUtils;

type

  { TMainInfo }

  TMainInfo = class
    public
      constructor Create;
      destructor Destroy;

      procedure LoadExpireproducts;
      procedure LoadExpiredMonthProducts;
      procedure LoadOutOfSTocks;
  end;

implementation
uses
  MainForm;

{ TMainInfo }

constructor TMainInfo.Create;
begin

end;

destructor TMainInfo.Destroy;
begin

end;

procedure TMainInfo.LoadExpireproducts;
var
  dateNow : String;
  row : integer;
begin
  dateNow := FormatDateTime('yyyy-mm-dd',now);
  try
     Form2.MainMysql.Connected := true;
     Form2.MainQuery.SQL.Text := 'SELECT * FROM `inventory` WHERE deleted = 0 AND `expirationDate` < '+ QuotedStr(dateNow);
     Form2.MainQuery.Open;

     Form2.expiredGrid.RowCount := 1;

     while not Form2.MainQuery.EOF do begin
         row := Form2.expiredGrid.RowCount;
         Form2.expiredGrid.RowCount := row + 1;
         Form2.expiredGrid.Cells[0,0] := 'No.';
         Form2.expiredGrid.Cells[0,row] := row.ToString;
         Form2.expiredGrid.Cells[1, row] := Form2.MainQuery.Fields[1].AsAnsiString;
         Form2.expiredGrid.Cells[2, row] := Form2.MainQuery.Fields[2].AsAnsiString;
         Form2.expiredGrid.Cells[3, row] := FormatDateTime('yyyy-mm-dd',StrToDate(Form2.MainQuery.Fields[5].AsAnsiString));
         Form2.expiredGrid.Cells[4, row] := DaysBetween(StrToDate(dateNow),StrToDate(Form2.MainQuery.Fields[5].AsAnsiString)).ToString;

         Form2.MainQuery.Next;
     end;
  finally
     Form2.MainQuery.Close;
     Form2.MainMysql.Connected := false;
  end;

end;

procedure TMainInfo.LoadExpiredMonthProducts;
var
  dateNow : String;
  dateAgo : String;
  row : integer;
begin
  dateNow := FormatDateTime('yyyy-mm-dd',now);

  dateAgo := FormatDateTime('yyyy-mm-dd', IncMonth(now,1)       );
  try
     Form2.MainMysql.Connected := true;
     Form2.MainQuery.SQL.Text := 'SELECT * FROM `inventory` WHERE deleted = 0 AND `expirationDate` >= '+ QuotedStr(dateNow)+ ' AND `expirationDate` <= '+ QuotedStr(dateAgo);
     Form2.MainQuery.Open;

     Form2.expiredMonthGrid.RowCount := 1;

     while not Form2.MainQuery.EOF do begin
         row := Form2.expiredMonthGrid.RowCount;
         Form2.expiredMonthGrid.RowCount := row + 1;
         Form2.expiredMonthGrid.Cells[0,0] := 'No.';
         Form2.expiredMonthGrid.Cells[0,row] := row.ToString;
         Form2.expiredMonthGrid.Cells[1, row] := Form2.MainQuery.Fields[1].AsAnsiString;
         Form2.expiredMonthGrid.Cells[2, row] := Form2.MainQuery.Fields[2].AsAnsiString;
         Form2.expiredMonthGrid.Cells[3, row] := FormatDateTime('yyyy-mm-dd',StrToDate(Form2.MainQuery.Fields[5].AsAnsiString));
         Form2.expiredMonthGrid.Cells[4, row] := DaysBetween(StrToDate(dateNow),StrToDate(Form2.MainQuery.Fields[5].AsAnsiString)).ToString;

         Form2.MainQuery.Next;
     end;
  finally
     Form2.MainQuery.Close;
     Form2.MainMysql.Connected := false;
  end;
end;

procedure TMainInfo.LoadOutOfSTocks;
var
  row : integer;
begin
  try
     Form2.MainMysql.Connected := true;
     Form2.MainQuery.SQL.Text := 'SELECT * FROM `inventory` WHERE deleted = 0 AND `productStock` = 0';
     Form2.MainQuery.Open;

     Form2.ofsGrid.RowCount := 1;

     while not Form2.MainQuery.EOF do begin
         row := Form2.ofsGrid.RowCount;
         Form2.ofsGrid.RowCount := row + 1;
         Form2.ofsGrid.Cells[0,0] := 'No.';
         Form2.ofsGrid.Cells[0,row] := row.ToString;
         Form2.ofsGrid.Cells[1, row] := Form2.MainQuery.Fields[1].AsAnsiString;
         Form2.ofsGrid.Cells[2, row] := Form2.MainQuery.Fields[2].AsAnsiString;
         Form2.ofsGrid.Cells[3, row] := Form2.MainQuery.Fields[7].AsAnsiString;


         Form2.MainQuery.Next;
     end;
  finally
     Form2.MainQuery.Close;
     Form2.MainMysql.Connected := false;
  end;
end;

end.

