Unit Invetory;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, Grids, Buttons, DateTimePicker, PrintersDlgs, LR_Class,
  LR_DBSet, LR_Desgn, LR_DSet, inventory,viewdeleted, Types;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    frDesigner1: TfrDesigner;
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    productsack: TLabeledEdit;
    updateBtn: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    typeSearch: TComboBox;
    inventorymysql: TMySQL57Connection;
    productexp: TDateTimePicker;
    searchEdt: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    productid: TLabeledEdit;
    productname: TLabeledEdit;
    producttype: TLabeledEdit;
    productbrand: TLabeledEdit;
    productprice: TLabeledEdit;
    productstock: TLabeledEdit;
    MySQL57Connection1: TMySQL57Connection;
    SQLQuery1: TSQLQuery;
    inventoryquery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    inventorytransaction: TSQLTransaction;
    inventoryGrid: TStringGrid;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frUserDataset1First(Sender: TObject);
    procedure frUserDataset1Next(Sender: TObject);
    procedure inventoryGridDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure inventoryGridPrepareCanvas(sender: TObject; aCol, aRow: Integer;
      aState: TGridDrawState);
    procedure productnameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure searchEdtKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure typeSearchChange(Sender: TObject);
    procedure updateBtnClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure inventoryGridDblClick(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;
  kk : longint;
implementation
  uses
    gromming;
{$R *.lfm}

{ TForm3 }

procedure TForm3.BitBtn7Click(Sender: TObject);
var
   inventory : TInventory;
begin
   if(self.productid.Text = '') or (self.productname.Text = '') or (self.producttype.Text = '') or (self.productbrand.Text = '') then
   begin
     showmessage('Please Complete to fields!')
   end
   else
   begin
     inventory := TInventory.Create;
     inventory.productID      := self.productid.Text;
     inventory.productName    := self.productname.Text;
     inventory.productType    := self.producttype.Text;
     inventory.productBrand   := self.productbrand.Text;
     inventory.productExp     := self.productexp.Date;
     inventory.productPrice   := self.productprice.Text;
     inventory.productStock   := self.productstock.Text;
     inventory.productSack    := self.productsack.Text;
     inventory.insertData;

     self.productid.Text := '';
     self.productname.Text := '';
     self.producttype.Text := '';
     self.productbrand.Text:= '';
     self.productprice.Text := '';
     self.productstock.Text := '';
     self.productsack.Text := '';
     self.productexp.Date := now;

     inventory.loadData;
   end;

end;

procedure TForm3.updateBtnClick(Sender: TObject);
var
   aCol: integer;
   inventory : TInventory;
begin
  inventory := TInventory.Create;
  aCol := self.inventoryGrid.Row;

  inventory.editData(self.productid.Text,self.productname.Text,self.producttype.Text,self.productbrand.Text,self.productexp.Date,self.productprice.Text,self.productstock.Text,self.inventoryGrid.Cells[8,aCol],self.productsack.Text);
  inventory.loadData;
  self.updateBtn.Enabled:= false;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);

begin
  frReport1.ShowReport;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
begin
  self.productid.Text := '';
  self.productname.Text := '';
  self.producttype.Text := '';
  self.productbrand.Text:= '';
  self.productprice.Text := '';
  self.productstock.Text := '';
end;

procedure TForm3.Button1Click(Sender: TObject);
var
   inventory : TInventory;
begin
   inventory := TInventory.Create;
   inventory.searchData(self.searchEdt.Text);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  frReport1.DesignReport;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm3.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TForm3.frReport1GetValue(const ParName: String; var ParValue: Variant
  );
begin
  if ParName = 'ProductID' then
  begin
   ParValue := self.inventoryGrid.Cells[1,kk];
  end;

  if ParName = 'ProductName' then
  begin
   ParValue := self.inventoryGrid.Cells[2,kk];
  end;

  if ParName = 'ProductType' then
  begin
   ParValue := self.inventoryGrid.Cells[3,kk];
  end;

  if ParName = 'ProductBrand' then
  begin
   ParValue := self.inventoryGrid.Cells[4,kk];
  end;

  if ParName = 'ProductExp' then
  begin
   ParValue := self.inventoryGrid.Cells[5,kk];
  end;

  if ParName = 'ProductPrice' then
  begin
   ParValue := self.inventoryGrid.Cells[6,kk];
  end;

  if ParName = 'ProductStock' then
  begin
   ParValue := self.inventoryGrid.Cells[7,kk];
  end;

  if ParName = 'Price' then
  begin
   ParValue := '6';
  end;

  if ParName = 'Stock' then
  begin
   ParValue := '5';
  end;
end;

procedure TForm3.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
 Eof := kk > self.inventoryGrid.RowCount -1;
end;

procedure TForm3.frUserDataset1First(Sender: TObject);
begin
 kk := 1;
end;

procedure TForm3.frUserDataset1Next(Sender: TObject);
begin
 Inc(kk)
end;

procedure TForm3.inventoryGridDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin

end;

procedure TForm3.inventoryGridPrepareCanvas(sender: TObject; aCol,
  aRow: Integer; aState: TGridDrawState);
begin
     if(aRow = 0)then
     begin
         (Sender as TStringGrid).Canvas.Font.Color :=  clBlack;
     end
     else
     begin
       if (Sender as TStringGrid).Cells[7, aRow] <= '10' then
          (Sender as TStringGrid).Canvas.Font.Color :=  clRed
      else
          (Sender as TStringGrid).Canvas.Font.Color :=  clBlack;
     end;

end;

procedure TForm3.productnameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(self.productname.Text = '')then
  begin
    self.productid.Text:= '';
  end
  else
  begin
    self.productid.Text:= copy(self.productname.Text, 1, 2)+IntToStr(random(100) + 99)+FormatDateTime('yyyymmdd',self.productexp.Date);
  end;
end;

procedure TForm3.searchEdtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   inventory : TInventory;
begin
   inventory := TInventory.Create;
   inventory.searchData(self.searchEdt.Text);
end;

procedure TForm3.typeSearchChange(Sender: TObject);
var
   inventory : TInventory;
begin
   inventory := TInventory.Create;
   inventory.searchData(self.searchEdt.Text);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  aCol: integer;
  inventory : TInventory;
begin
  inventory := TInventory.Create;
  aCol := self.inventoryGrid.Row;

  if MessageDlg('Question', 'Do you wish to Delete?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    inventory.deleteData(self.inventoryGrid.Cells[8,aCol]);
    inventory.loadData;
  end;

end;

procedure TForm3.FormCreate(Sender: TObject);
var
  invetory : TInventory;
  i : integer;
begin
  self.productexp.Date := now;
  invetory := TInventory.Create;
  invetory.getDropType;

  self.typeSearch.Items.Add('');
  for i := 0 to invetory.dropProductType.Count -1 do begin

       self.typeSearch.Items.Add(invetory.dropProductType[i]);
  end;


end;



procedure TForm3.FormShow(Sender: TObject);
begin
  self.ShowInTaskBar:= stAlways;
  frReport1.LoadFromFile('print.lrf');
end;

procedure TForm3.inventoryGridDblClick(Sender: TObject);
 var
    aCol: integer;
begin
  aCol := self.inventoryGrid.Row;

  if MessageDlg('Question', 'Do you wish to Update?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    self.productid.Text    := self.inventoryGrid.Cells[1,aCol];
    self.productname.Text  := self.inventoryGrid.Cells[2,aCol];
    self.producttype.Text  := self.inventoryGrid.Cells[3,aCol];
    self.productbrand.Text := self.inventoryGrid.Cells[4,aCol];
    self.productprice.Text := self.inventoryGrid.Cells[6,aCol];
    self.productstock.Text := self.inventoryGrid.Cells[7,aCol];
    self.productexp.Date   := StrToDate(FormatDateTime('yyyy-mm-dd',StrToDate(self.inventoryGrid.Cells[5,aCol])));
    self.productsack.Text := self.inventoryGrid.Cells[10,aCol];
    self.updateBtn.Enabled:= true;
  end;


end;




end.

