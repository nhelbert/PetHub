unit Report;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DateTimePicker, LR_DSet, LR_Class,
  reportclass;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    Edit1: TEdit;
    frmReport: TfrReport;
    frUserDataset1: TfrUserDataset;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    reportMysql: TMySQL57Connection;
    reportQuery: TSQLQuery;
    reportTransaction: TSQLTransaction;
    reportGrid: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateFromChange(Sender: TObject);
    procedure DateToChange(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure frmReportGetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frUserDataset1First(Sender: TObject);
    procedure frUserDataset1Next(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;
  kk : integer;
  grossIn,netIn: String;
implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.FormShow(Sender: TObject);
var
  report : TReportInformation;
begin
  report := TReportInformation.Create;
  self.DateFrom.Date:= Now;
  self.DateTo.Date:= Now;
  report.getData(DateToStr(self.DateFrom.Date),DateToStr(self.DateTo.Date));
  self.ShowInTaskBar:= stAlways;

  self.frmReport.LoadFromFile('report.lrf');
end;

procedure TForm5.frmReportGetValue(const ParName: String; var ParValue: Variant
  );
var
  gross,net : String;
begin

   if ParName = 'ProductName' then
   begin
     ParValue := self.reportGrid.Cells[1,kk];
   end;

   if ParName = 'qty' then
   begin
     ParValue := self.reportGrid.Cells[2,kk];
   end;

   if ParName = 'price' then
   begin
     ParValue := self.reportGrid.Cells[3,kk];
   end;

   if ParName = 'amount' then
   begin
     ParValue := self.reportGrid.Cells[4,kk];
   end;

   if ParName = 'dateop' then
   begin
     ParValue := self.reportGrid.Cells[5,kk];
   end;

   if ParName = 'discount' then
   begin
     ParValue := self.reportGrid.Cells[6,kk];
   end;

   if ParName = 'netIncome' then
   begin
     ParValue := self.reportGrid.Cells[7,kk];
   end;

     if ParName = 'grossTo' then
   begin

     ParValue := grossIn;
   end;

      if ParName = 'netTo' then
   begin

     ParValue := netIn;
   end;

   if ParName = 'DateFrom' then
   begin
     ParValue := FormatDateTime('yyyy-mm-dd',self.DateFrom.Date);
   end;

   if ParName = 'DateTo' then
   begin
     ParValue := FormatDateTime('yyyy-mm-dd',self.DateTo.Date);
   end;

    if ParName = 'TimeNow' then
   begin
     ParValue := FormatDateTime('yyyy-mm-dd hh:mm:ss',now)
   end;
end;

procedure TForm5.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
  Eof := kk > self.reportGrid.RowCount -1;
end;

procedure TForm5.frUserDataset1First(Sender: TObject);
begin
 kk := 1;
end;

procedure TForm5.frUserDataset1Next(Sender: TObject);
begin
 Inc(kk);
end;

procedure TForm5.Button1Click(Sender: TObject);
var
  i : integer;
begin
 grossIn := '0';
 netIn := '0';
  for i := 1 to self.reportGrid.RowCount -1 do begin
    grossIn := FloatToStr(StrToFloat(grossIn) + StrToFloat(self.reportGrid.Cells[4,i]));
    netIn :=  FloatToStr(StrToFloat(netIn) +  StrToFloat(self.reportGrid.Cells[7,i]));
  end;
  self.frmReport.ShowReport;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
  report : TReportInformation;
begin
  report := TReportInformation.Create;
  report.getData(DateToStr(self.DateFrom.Date),DateToStr(self.DateTo.Date));
end;

procedure TForm5.DateFromChange(Sender: TObject);
var
  report : TReportInformation;
begin
  report := TReportInformation.Create;
  report.getData(DateToStr(self.DateFrom.Date),DateToStr(self.DateTo.Date));
end;

procedure TForm5.DateToChange(Sender: TObject);
var
  report : TReportInformation;
begin
  report := TReportInformation.Create;
  report.getData(DateToStr(self.DateFrom.Date),DateToStr(self.DateTo.Date));
end;

procedure TForm5.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  report : TReportInformation;
begin
  report := TReportInformation.Create;
  report.getData(DateToStr(self.DateFrom.Date),DateToStr(self.DateTo.Date),self.Edit1.Text);
end;

end.

