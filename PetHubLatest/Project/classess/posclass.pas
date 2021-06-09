unit posClass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,dialogs;

type

  { TposInformation }

  TposInformation = class
    private
      FproductAmount: String;
      FproductID: String;
      FproductName: String;
      FproductPrice: String;
      FproductQuantity: String;
    public
      constructor Create;
      destructor Destory;
      property productID : String read FproductID write FproductID;
      property productName : String read FproductName write FproductName;
      property productQuantity : String read FproductQuantity write FproductQuantity;
      property productPrice : String read FproductPrice write FproductPrice;
      property productAmount : String read FproductAmount write FproductAmount;

      procedure getItem(productIDx:String);
      procedure searchItem(productNamex:String);
      procedure loadItem;
      procedure updateStocks(productIDStock,Stockqty:String);
      procedure insertSales(productIDSales,productNameSales,productQuantitySales,productPriceSales,productAmountSales,DateofPruchase,discount,seller:String);
  end;

implementation
uses
  POS;
{ TposInformation }

constructor TposInformation.Create;
begin

end;

destructor TposInformation.Destory;
begin

end;

procedure TposInformation.getItem(productIDx: String);
var
  dateNow : String;
begin
 try
    dateNow := FormatDateTime('yyyy-mm-dd',now);
    Form4.posMysql.Connected:= True;
    Form4.postQuery.SQL.Text := 'SELECT * FROM inventory WHERE deleted = 0 AND productID = '+QuotedStr(productIDx)+' AND `expirationDate` >= '+ QuotedStr(dateNow);

    Form4.postQuery.Open;

     while not Form4.postQuery.EOF do begin

       Form4.postQuery.Next;
       Form4.lblID.Caption           := Form4.postQuery.Fields[0].AsAnsiString;
       Form4.lblProductName.Caption  := Form4.postQuery.Fields[2].AsAnsiString;
       Form4.lblProductBrand.Caption := Form4.postQuery.Fields[4].AsAnsiString;
       Form4.lblProductType.Caption  := Form4.postQuery.Fields[3].AsAnsiString;
       Form4.lblPrice.Caption        := Form4.postQuery.Fields[6].AsAnsiString;
       Form4.lblStocks.Caption       := Form4.postQuery.Fields[7].AsAnsiString;
       Form4.lblGroomId.Caption      := Form4.postQuery.Fields[10].AsAnsiString;
       if(Form4.postQuery.Fields[7].AsAnsiString = '0')then
       begin
         Form4.btnAdd.Enabled:= False;
       end
       else
       begin
         Form4.btnAdd.Enabled:= True;
       end;
     end;
 finally
     Form4.postQuery.Close;
     Form4.posMysql.Connected:=False;
 end;
end;

procedure TposInformation.searchItem(productNamex: String);
var
  row : integer;
  dateNow : String;
begin
 dateNow := FormatDateTime('yyyy-mm-dd',now);
  try
    Form4.posMysql.Connected:= True;
    Form4.postQuery.SQL.Text := 'SELECT * FROM inventory WHERE deleted = 0 AND (productName LIKE '+QuotedStr(productNamex+'%')+' OR productID LIKE '+QuotedStr(productNamex+'%')+') AND `expirationDate` >= '+ QuotedStr(dateNow);

    Form4.postQuery.Open;

    Form4.srchGrid.RowCount := 1;
     while not Form4.postQuery.EOF do begin
       row := Form4.srchGrid.RowCount;
       Form4.srchGrid.RowCount := row + 1;
       Form4.srchGrid.Cells[0,0] := 'No.';
       Form4.srchGrid.Cells[0,row] := row.ToString;
       Form4.srchGrid.Cells[1, row] := Form4.postQuery.Fields[1].AsAnsiString;
       Form4.srchGrid.Cells[2, row] := Form4.postQuery.Fields[2].AsAnsiString;
       Form4.postQuery.Next;


     end;
 finally
     Form4.srchGrid.AutoSizeColumns;
     Form4.postQuery.Close;
     Form4.posMysql.Connected:=False;
 end;
end;

procedure TposInformation.loadItem;
var
  row : integer;
  dateNow : String;
begin
 dateNow := FormatDateTime('yyyy-mm-dd',now);
  try
    Form4.posMysql.Connected:= True;
    Form4.postQuery.SQL.Text := 'SELECT * FROM inventory WHERE deleted = 0 AND `expirationDate` >= '+ QuotedStr(dateNow);

    Form4.postQuery.Open;

    Form4.srchGrid.RowCount := 1;
     while not Form4.postQuery.EOF do begin
       row := Form4.srchGrid.RowCount;
       Form4.srchGrid.RowCount := row + 1;
       Form4.srchGrid.Cells[0,0] := 'No.';
       Form4.srchGrid.Cells[0,row] := row.ToString;
       Form4.srchGrid.Cells[1, row] := Form4.postQuery.Fields[1].AsAnsiString;
       Form4.srchGrid.Cells[2, row] := Form4.postQuery.Fields[2].AsAnsiString;
       Form4.postQuery.Next;


     end;
 finally
     Form4.srchGrid.AutoSizeColumns;
     Form4.postQuery.Close;
     Form4.posMysql.Connected:=False;
 end;
end;

procedure TposInformation.updateStocks(productIDStock, Stockqty: String);
begin
  try
     Form4.posMysql.Connected:= true;
     if(Form4.lblGroomId.Caption = '1')then
     begin
          Form4.postQuery.SQL.Text := 'UPDATE inventory SET productStock = 0 WHERE id = :productID';
          Form4.postQuery.Params.ParamByName('productID').AsString := productIDStock;
     end
     else
     begin
          Form4.postQuery.SQL.Text := 'UPDATE inventory SET productStock = productStock - :Stockqty WHERE id = :productID';
          Form4.postQuery.Params.ParamByName('productID').AsString := productIDStock;
          Form4.postQuery.Params.ParamByName('Stockqty').AsInteger := Stockqty.ToInteger;
     end;



     Form4.postQuery.ExecSQL;
     Form4.posTransaction.Commit;
  finally
     Form4.posMysql.Connected:= False;
  end;
end;

procedure TposInformation.insertSales(productIDSales, productNameSales,
  productQuantitySales, productPriceSales, productAmountSales, DateofPruchase,
  discount, seller: String);
begin
  try
     Form4.posMysql.Connected:= true;
     Form4.postQuery.SQL.Text:= 'INSERT INTO sales '+
     '(productID,productName,qty,price,amount,dateofPurchase,discount,seller) '+
     'values (:productID,:productName,:qty,:price,:amount,:dateofPurchase,:discount,:seller)';

     Form4.postQuery.Params.ParamByName('productID').AsString        := productIDSales;
     Form4.postQuery.Params.ParamByName('productName').AsString      := productNameSales;
     Form4.postQuery.Params.ParamByName('qty').AsString              := productQuantitySales;
     Form4.postQuery.Params.ParamByName('price').AsString            := productPriceSales;
     Form4.postQuery.Params.ParamByName('amount').AsString           := productAmountSales;
     Form4.postQuery.Params.ParamByName('dateofPurchase').AsString   := DateofPruchase;
     Form4.postQuery.Params.ParamByName('discount').AsString         := discount;
     Form4.postQuery.Params.ParamByName('seller').AsString         := seller;
     Form4.postQuery.ExecSQL;
     Form4.posTransaction.Commit;
  finally
     Form4.cash.Text := '0';
     Form4.btnProcess.Enabled:= False;
     Form4.posMysql.Connected:=False;
  end;
end;

end.

