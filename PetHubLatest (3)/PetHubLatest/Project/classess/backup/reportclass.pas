unit reportclass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;

type

  { TReportInformation }

  TReportInformation = class
    public
      constructor Create;
      destructor Destroy;
      procedure getData(DateFrom,DateTo : String); overload;
      procedure getData(DateFrom,DateTo,Search : String); overload;
  end;


implementation
uses
  Report;

{ TReportInformation }

constructor TReportInformation.Create;
begin

end;

destructor TReportInformation.Destroy;
begin

end;

procedure TReportInformation.getData(DateFrom, DateTo: String);
var
  row : integer;
begin
  try
     Form5.reportMysql.Connected:= True;
     Form5.reportQuery.SQL.Text:= 'SELECT * FROM sales WHERE dateofPurchase >= '+QuotedStr(DateFrom+' 00:00:01')+ ' AND dateofPurchase <= '+QuotedStr(DateTo+' 23:59:59');
     Form5.reportQuery.Open;

     Form5.reportGrid.RowCount:= 1;

     while not Form5.reportQuery.EOF do begin
       row := Form5.reportGrid.RowCount;
       Form5.reportGrid.RowCount := row + 1;
       Form5.reportGrid.Cells[0,0] := 'No.';
       Form5.reportGrid.Cells[0,row] := row.ToString;
       Form5.reportGrid.Cells[1, row] := Form5.reportQuery.Fields[2].AsAnsiString;
       Form5.reportGrid.Cells[2, row] := Form5.reportQuery.Fields[3].AsAnsiString;
       Form5.reportGrid.Cells[3, row] := Form5.reportQuery.Fields[4].AsAnsiString;
       Form5.reportGrid.Cells[4, row] := Form5.reportQuery.Fields[5].AsAnsiString;
       Form5.reportGrid.Cells[5, row] := Form5.reportQuery.Fields[6].AsAnsiString;
       Form5.reportGrid.Cells[6, row] := Form5.reportQuery.Fields[7].AsAnsiString;
       Form5.reportGrid.Cells[7, row] := FloatToStr(StrToFloat(Form5.reportQuery.Fields[5].AsAnsiString) - (StrToFloat(Form5.reportQuery.Fields[5].AsAnsiString) * StrToFloat(Form5.reportQuery.Fields[7].AsAnsiString)));
       Form5.reportQuery.Next;
     end;
  finally
     Form5.reportGrid.AutoSizeColumn(1);
     Form5.reportQuery.Close;
     Form5.reportMysql.Connected:= False;
  end;
end;

procedure TReportInformation.getData(DateFrom, DateTo, Search: String);
var
  row : integer;
begin
  try
     Form5.reportMysql.Connected:= True;
     Form5.reportQuery.SQL.Text:= 'SELECT * FROM sales WHERE (productName LIKE '+ QuotedStr(Search+'%')+'OR'+ 'seller LIKE '+ QuotedStr(Search+'%')+') AND dateofPurchase >= '+QuotedStr(DateFrom+' 00:00:01')+ ' AND dateofPurchase <= '+QuotedStr(DateTo+' 23:59:59');
     Form5.reportQuery.Open;

     Form5.reportGrid.RowCount:= 1;

     while not Form5.reportQuery.EOF do begin
       row := Form5.reportGrid.RowCount;
       Form5.reportGrid.RowCount := row + 1;
       Form5.reportGrid.Cells[0,0] := 'No.';
       Form5.reportGrid.Cells[0,row] := row.ToString;
       Form5.reportGrid.Cells[1, row] := Form5.reportQuery.Fields[2].AsAnsiString;
       Form5.reportGrid.Cells[2, row] := Form5.reportQuery.Fields[3].AsAnsiString;
       Form5.reportGrid.Cells[3, row] := Form5.reportQuery.Fields[4].AsAnsiString;
       Form5.reportGrid.Cells[4, row] := Form5.reportQuery.Fields[5].AsAnsiString;
       Form5.reportGrid.Cells[5, row] := Form5.reportQuery.Fields[6].AsAnsiString;
       Form5.reportGrid.Cells[6, row] := Form5.reportQuery.Fields[7].AsAnsiString;
       Form5.reportGrid.Cells[7, row] := FloatToStr(StrToFloat(Form5.reportQuery.Fields[5].AsAnsiString) - (StrToFloat(Form5.reportQuery.Fields[5].AsAnsiString) * StrToFloat(Form5.reportQuery.Fields[7].AsAnsiString)));
       Form5.reportQuery.Next;
     end;
  finally
     Form5.reportGrid.AutoSizeColumn(1);
     Form5.reportQuery.Close;
     Form5.reportMysql.Connected:= False;
  end;
end;

end.

