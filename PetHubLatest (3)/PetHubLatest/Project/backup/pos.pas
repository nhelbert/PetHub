unit POS;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs, LCLType,
  StdCtrls, DBCtrls, Grids, ExtCtrls, LR_Class, LR_DSet, LR_Desgn, posClass;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    btnVoid: TButton;
    btnAdd: TButton;
    btnProcess: TButton;
    edtSrchItem: TEdit;
    edtItem: TEdit;
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    Label15: TLabel;
    Label5: TLabel;
    lblseller: TLabel;
    lblGroomId: TLabel;
    lblID: TLabel;
    lblAmount: TLabel;
    productQty: TEdit;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    lblProductBrand: TLabel;
    Label12: TLabel;
    lblProductType: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblPrice: TLabel;
    lblStocks: TLabel;
    Label8: TLabel;
    lblProductName: TLabel;
    posMysql: TMySQL57Connection;
    posGrid: TStringGrid;
    postQuery: TSQLQuery;
    posTransaction: TSQLTransaction;
    cash: TEdit;
    srchGrid: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnVoidClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure cashKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtItemEnter(Sender: TObject);
    procedure edtItemKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSrchItemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frUserDataset1First(Sender: TObject);
    procedure frUserDataset1Next(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
  kk : integer;
  rcptDiscount: String;
implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
var
  POSData: TposInformation;
begin
  POSData := TposInformation.Create;
  POSData.getItem(self.edtItem.Text);

  if(self.lblProductName.Caption = '')then
  begin
     self.btnAdd.EnabledForm4:= false;
  end
  else
  begin
     self.btnAdd.Enabled:= true;
     self.productQty.Text := '1';
  end;
end;

procedure TForm4.btnAddClick(Sender: TObject);
var
  row: integer;
begin
  if(self.lblStocks.Caption = '0') and (self.lblGroomId.Caption = '0') or (StrToFloat(self.lblStocks.Caption) < StrToFloat('0'))then
  begin
     showmessage('Please Add Stock!');
  end
  else
  begin
      row := self.posGrid.RowCount;
      self.posGrid.RowCount := row + 1;
      self.posGrid.Cells[0,row] := row.ToString;
      self.posGrid.Cells[1,row] := self.edtItem.Text;
      self.posGrid.Cells[2,row] := self.lblProductName.Caption;
      self.posGrid.Cells[3,row] := self.productQty.Text;
      self.posGrid.Cells[4,row] := self.lblPrice.Caption;
      self.posGrid.Cells[5,row] := FloatToStr(StrToFloat(self.productQty.Text) * StrToFloat(self.lblPrice.Caption)) ;
      self.posGrid.Cells[6,row] := self.lblID.Caption;
      self.lblAmount.Caption := FloatToStr(StrToFloat(self.lblAmount.Caption) + (StrToFloat(self.productQty.Text) * StrToFloat(self.lblPrice.Caption)));

      self.lblStocks.Caption := '';
      self.lblPrice.Caption := '';
      self.lblProductType.Caption := '';
      self.lblProductBrand.Caption := '';
      self.lblProductName.Caption := '';
      self.lblProductName.Caption := '';
      self.productQty.Text := '0';
      self.edtItem.Text := '';
      self.btnAdd.Enabled:= false;

      if(self.posGrid.RowCount > 1)then
      begin
        self.btnVoid.Enabled:= true;
      end;
  end;
end;

procedure TForm4.btnVoidClick(Sender: TObject);
var
  aCol,i : integer;
begin
  aCol := self.posGrid.Row;

  self.lblAmount.Caption := FloatToStr(StrToFloat(self.lblAmount.Caption) - StrToFloat(self.posGrid.Cells[5,aCol]));

  self.posGrid.DeleteRow(self.posGrid.Cells[0,aCol].ToInteger);

  if(self.posGrid.RowCount <= 1)then
  begin
    self.btnVoid.Enabled:= false;
  end;
  for i := 1 to self.posGrid.RowCount -1 do begin
     self.posGrid.Cells[0,i] := i.ToString;
  end;

end;

procedure TForm4.btnProcessClick(Sender: TObject);
var
  DisCount: String;
  i,j: integer;
  posClass : TposInformation;
begin
  posClass := TposInformation.Create;
  rcptDiscount := '0';
  DisCount := '0';

    self.frReport1.ShowReport;


  for i := 1 to self.posGrid.RowCount -1 do begin
       posClass.updateStocks(self.posGrid.Cells[6,i],self.posGrid.Cells[3,i]);
       posClass.insertSales(self.posGrid.Cells[1,i],self.posGrid.Cells[2,i],self.posGrid.Cells[3,i],self.posGrid.Cells[4,i],self.posGrid.Cells[5,i],FormatDateTime('yyyy-mm-dd hh:mm:ss',Now),DisCount,self.lblseller.Caption);
  end;
  for j := 1 to self.posGrid.RowCount -1 do begin
       self.btnVoid.Click;
  end;


end;

procedure TForm4.cashKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if(self.cash.Text = '')then
  begin
    self.cash.Text := '0';
    self.btnProcess.Enabled:= False;
  end
  else
  begin
    if(StrToFloat(self.cash.Text) >= StrToFloat(self.lblAmount.Caption))then
    begin
      if(self.posGrid.RowCount > 1)then
      begin
        self.btnProcess.Enabled:= true;
      end;
    end
    else
    begin
      self.btnProcess.Enabled:= False;
    end;
  end;


end;

procedure TForm4.edtItemEnter(Sender: TObject);
begin

end;

procedure TForm4.edtItemKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
var
  POSData: TposInformation;
begin
  if(self.edtItem.Text = '')then
  begin
      self.lblStocks.Caption := '';
      self.lblPrice.Caption := '';
      self.lblProductType.Caption := '';
      self.lblProductBrand.Caption := '';
      self.lblProductName.Caption := '';
      self.btnAdd.Enabled:= false;
  end;

  POSData := TposInformation.Create;
  POSData.getItem(self.edtItem.Text);

  if(self.lblProductName.Caption = '')then
  begin
     self.btnAdd.Enabled:= false;
  end
  else
  begin
     self.btnAdd.Enabled:= true;
     self.productQty.Text := '1';
  end;
end;

procedure TForm4.edtSrchItemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  POSData: TposInformation;
begin
  POSData := TposInformation.Create;
  if(self.edtSrchItem.Text = '')then
  begin
    POSData.loadItem;
  end
  else
  begin
    POSData.searchItem(self.edtSrchItem.Text);
  end;
end;

procedure TForm4.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

  self.posGrid.Clear;

   self.posGrid.RowCount :=  1;
end;

procedure TForm4.FormShow(Sender: TObject);
var
  POSData: TposInformation;
begin

  self.frReport1.LoadFromFile('pos.lrf');
  self.ShowInTaskBar:= stAlways;
  self.lblStocks.Caption := '';
  self.lblPrice.Caption := '';
  self.lblProductType.Caption := '';
  self.lblProductBrand.Caption := '';
  self.lblProductName.Caption := '';
  self.posGrid.Cells[0,0] := 'No.';
  if(self.posGrid.RowCount = 1)then
  begin
    self.btnVoid.Enabled:= false;
  end;

  POSData := TposInformation.Create;
  POSData.loadItem;
end;

procedure TForm4.frReport1GetValue(const ParName: String; var ParValue: Variant
  );
begin
  if ParName = 'ProductName' then
  begin
   ParValue := self.posGrid.Cells[2,kk];
  end;

  if ParName = 'ProductQty' then
  begin
   ParValue := self.posGrid.Cells[3,kk];
  end;

  if ParName = 'ProductPrice' then
  begin
   ParValue := self.posGrid.Cells[4,kk];
  end;

  if ParName = 'Amount' then
  begin
   ParValue := self.posGrid.Cells[5,kk];
  end;

  if ParName = 'totalAmount' then
  begin
   ParValue := StrToFloat(self.lblAmount.Caption) - StrToFloat(rcptDiscount);
  end;

  if ParName = 'timeNow' then
  begin
   ParValue := Now;
  end;

  if ParName = 'totalCash' then
  begin
   ParValue := self.cash.Text;
  end;

  if ParName = 'change' then
  begin
   ParValue := StrToFloat(self.cash.Text) - (StrToFloat(self.lblAmount.Caption) - StrToFloat(rcptDiscount));
  end;

end;

procedure TForm4.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
  Eof := kk > self.posGrid.RowCount -1;
end;

procedure TForm4.frUserDataset1First(Sender: TObject);
begin
  kk := 1;
end;

procedure TForm4.frUserDataset1Next(Sender: TObject);
begin
  Inc(kk)
end;

procedure TForm4.Image1Click(Sender: TObject);
begin

end;




end.

