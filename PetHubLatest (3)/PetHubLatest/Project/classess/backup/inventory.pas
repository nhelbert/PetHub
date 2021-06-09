unit inventory;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, dialogs,fpjson;
type

    { TInventory }

    TInventory = class
      private
        FdropProductType: TStringList;
        FproductBrand: String;
        FproductExp: TDateTime;
        FproductID: String;
        FproductName: String;
        FproductPrice: String;
        FproductSack: String;
        FproductStock: String;
        FproductType: String;
      public
        constructor Create;
        destructor Destroy;

        property productID : String read FproductID write FproductID;
        property productName : String read FproductName write FproductName;
        property productType : String read FproductType write FproductType;
        property productBrand : String read FproductBrand write FproductBrand;
        property productExp : TDateTime read FproductExp write FproductExp;
        property productPrice : String read FproductPrice write FproductPrice;
        property productStock : String read FproductStock write FproductStock;
        property productSack : String read FproductSack write FproductSack;

        property dropProductType: TStringList read FdropProductType write FdropProductType;

        procedure insertData;
        procedure insertGrooming;
        procedure loadData;
        procedure deleteData(id:string);
        procedure editData(productIDData,productNameData,productTypeData,productBrandData:String;productExpData:TDateTime;productPriceData,productStockData,docId,productSackData:String);

        procedure getDropType;
        procedure searchData(productNameSrch:String);
        procedure getDeleted;
    end;

implementation
uses
  Invetory,
  gromming,
  viewdeleted;
{ TInventory }

constructor TInventory.Create;
begin

end;

destructor TInventory.Destroy;
begin
  FreeAndNil(FdropProductType)
end;

procedure TInventory.insertData;
begin
  try
     Form3.inventorymysql.Connected:= true;
     Form3.inventoryquery.SQL.Text:= 'INSERT INTO inventory '+
     '(productID,productName,productType,productBrand,expirationDate,productPrice,productStock,productSack) '+
     'values (:productID,:productName,:productType,:productBrand,:expirationDate,:productPrice,:productStock,:productSack)';

     Form3.inventoryquery.Params.ParamByName('productID').AsString      := self.productID;
     Form3.inventoryquery.Params.ParamByName('productName').AsString    := self.productName;
     Form3.inventoryquery.Params.ParamByName('productType').AsString    := self.productType;
     Form3.inventoryquery.Params.ParamByName('productBrand').AsString   := self.productBrand;
     Form3.inventoryquery.Params.ParamByName('expirationDate').AsString := FormatDateTime('yyyy-mm-dd',self.productExp);
     Form3.inventoryquery.Params.ParamByName('productPrice').AsString   := self.productPrice;
     Form3.inventoryquery.Params.ParamByName('productStock').AsString   := self.productStock;
     Form3.inventoryquery.Params.ParamByName('productSack').AsString   := self.productSack;
     Form3.inventoryquery.ExecSQL;
     Form3.inventorytransaction.Commit;
  finally

     Form3.inventorymysql.Connected:=False;
  end;


end;

procedure TInventory.insertGrooming;
begin
  try
     Form3.inventorymysql.Connected:= true;
     Form3.inventoryquery.SQL.Text:= 'INSERT INTO inventory '+
     '(productID,productName,productType,productBrand,expirationDate,productPrice,productStock,groomingSvc) '+
     'values (:productID,:productName,:productType,:productBrand,:expirationDate,:productPrice,:productStock,1)';

     Form3.inventoryquery.Params.ParamByName('productID').AsString      := Form8.groomingId.Text;
     Form3.inventoryquery.Params.ParamByName('productName').AsString    := Form8.groomingName.Text;
     Form3.inventoryquery.Params.ParamByName('productType').AsString    := 'Service';
     Form3.inventoryquery.Params.ParamByName('productPrice').AsString   := Form8.groomingPrice.Text;
     Form3.inventoryquery.Params.ParamByName('productStock').AsString   := '-';
     Form3.inventoryquery.Params.ParamByName('productBrand').AsString   := '-';
     Form3.inventoryquery.Params.ParamByName('expirationDate').AsString   := '';


     Form3.inventoryquery.ExecSQL;
     Form3.inventorytransaction.Commit;
  finally

     Form3.inventorymysql.Connected:=False;
  end;
end;

procedure TInventory.loadData;
var
   row,i: integer;
begin
  try
    Form3.inventorymysql.Connected:= true;
    Form3.inventoryquery.SQL.Text := 'SELECT * FROM inventory WHERE deleted = 0';
    Form3.inventoryquery.Open;

    Form3.inventoryGrid.RowCount := 1;
     while not Form3.inventoryquery.EOF do begin
         row := Form3.inventoryGrid.RowCount;
         Form3.inventoryGrid.RowCount := row + 1;
         Form3.inventoryGrid.Cells[0,0] := 'No.';
         Form3.inventoryGrid.Cells[0,row] := row.ToString;
         Form3.inventoryGrid.Cells[1, row] := Form3.inventoryquery.Fields[1].AsAnsiString;
         Form3.inventoryGrid.Cells[2, row] := Form3.inventoryquery.Fields[2].AsAnsiString;
         Form3.inventoryGrid.Cells[3, row] := Form3.inventoryquery.Fields[3].AsAnsiString;
         Form3.inventoryGrid.Cells[4, row] := Form3.inventoryquery.Fields[4].AsAnsiString;
         Form3.inventoryGrid.Cells[5, row] := FormatDateTime('yyyy-mm-dd',StrToDate(Form3.inventoryquery.Fields[5].AsAnsiString));
         Form3.inventoryGrid.Cells[6, row] := Form3.inventoryquery.Fields[6].AsAnsiString;
         Form3.inventoryGrid.Cells[7, row] := Form3.inventoryquery.Fields[7].AsAnsiString;
         Form3.inventoryGrid.Cells[8, row] := Form3.inventoryquery.Fields[0].AsAnsiString;
         if(Form3.inventoryquery.Fields[7].AsAnsiString = '0')then
         begin
             Form3.inventoryGrid.Cells[9, row] := Form3.inventoryquery.Fields[11].AsAnsiString
         end
         else
         begin
             if(Form3.inventoryquery.Fields[11].AsAnsiString = '0')then
             begin
                  Form3.inventoryGrid.Cells[9, row] := '0';
             end
             else
             begin
                 Form3.inventoryGrid.Cells[9, row] := FloatToStr(StrToFloat(Form3.inventoryquery.Fields[7].AsAnsiString) / StrToFloat(Form3.inventoryquery.Fields[11].AsAnsiString));
             end;

         end;

         Form3.inventoryGrid.Cells[10, row] := Form3.inventoryquery.Fields[11].AsAnsiString;

         Form3.inventoryquery.Next;
     end;
  finally
     Form3.inventoryGrid.AutoSizeColumn(2);
     Form3.inventoryquery.Close;
     Form3.inventorymysql.Connected:=False;
  end;
end;

procedure TInventory.deleteData(id: string);
begin
  try
     Form3.inventorymysql.Connected:= true;
     Form3.inventoryquery.SQL.Text := 'UPDATE inventory SET deleted = 1, dateDeleted = :dateDeleted WHERE id = :productID';

     Form3.inventoryquery.Params.ParamByName('productID').AsString := id;
     Form3.inventoryquery.Params.ParamByName('dateDeleted').AsString := FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
     Form3.inventoryquery.ExecSQL;
     Form3.inventorytransaction.Commit;
  finally
     Form3.inventorymysql.Connected:= False;
     showmessage('Record Deleted!');
  end;
end;

procedure TInventory.editData(productIDData, productNameData, productTypeData,
  productBrandData: String; productExpData: TDateTime; productPriceData,
  productStockData, docId, productSackData: String);
begin
  try
     Form3.inventorymysql.Connected:= true;
     Form3.inventoryquery.SQL.Text := 'UPDATE inventory SET '+
     'productID = :productID,'+
     'productName = :productName,'+
     'productType = :productType,'+
     'productBrand = :productBrand,'+
     'expirationDate = :expirationDate,'+
     'productPrice = :productPrice,'+
     'productStock = :productStock,'+
     'productSack = :productSack '+
     'WHERE id = :id';

     Form3.inventoryquery.Params.ParamByName('productID').AsString := productIDData;
     Form3.inventoryquery.Params.ParamByName('productName').AsString := productNameData;
     Form3.inventoryquery.Params.ParamByName('productType').AsString := productTypeData;
     Form3.inventoryquery.Params.ParamByName('productBrand').AsString := productBrandData;
     Form3.inventoryquery.Params.ParamByName('expirationDate').AsString := FormatDateTime('yyyy-mm-dd',productExpData);;
     Form3.inventoryquery.Params.ParamByName('productPrice').AsString := productPriceData;
     Form3.inventoryquery.Params.ParamByName('productStock').AsString := productStockData;
     Form3.inventoryquery.Params.ParamByName('productSack').AsString := productSackData;

     Form3.inventoryquery.Params.ParamByName('id').AsString := docId;
     Form3.inventoryquery.ExecSQL;
     Form3.inventorytransaction.Commit;
  finally
     Form3.inventorymysql.Connected:= False;
     showmessage('Record Updated!');
     Form3.BitBtn8.Click;
  end;
end;

procedure TInventory.getDropType;
begin
  FdropProductType := TStringList.Create;
  try
    Form3.inventorymysql.Connected:= true;
    Form3.inventoryquery.SQL.Text := 'SELECT DISTINCT(productType) FROM inventory WHERE deleted = 0';
    Form3.inventoryquery.Open;

     while not Form3.inventoryquery.EOF do begin
         FdropProductType.Add(Form3.inventoryquery.Fields[0].AsAnsiString);
         Form3.inventoryquery.Next;
     end;
  finally
     Form3.inventoryquery.Close;
     Form3.inventorymysql.Connected:=False;
  end;
end;

procedure TInventory.searchData(productNameSrch: String);
var
   row : integer;
begin
  try
    Form3.inventorymysql.Connected:= true;

         Form3.inventoryquery.SQL.Text := 'SELECT * FROM inventory WHERE (productName LIKE '+QuotedStr(productNameSrch+'%')+'or productID LIKE '+QuotedStr(productNameSrch+'%')+' or productType LIKE '+QuotedStr(productNameSrch+'%')+' or productBrand LIKE '+QuotedStr(productNameSrch+'%')+' or expirationDate LIKE '+QuotedStr(productNameSrch+'%')+') AND deleted = 0';



    Form3.inventoryquery.Open;

    Form3.inventoryGrid.RowCount := 1;
     while not Form3.inventoryquery.EOF do begin
         row := Form3.inventoryGrid.RowCount;
         Form3.inventoryGrid.RowCount := row + 1;
         Form3.inventoryGrid.Cells[0,0] := 'No.';
         Form3.inventoryGrid.Cells[0,row] := row.ToString;
         Form3.inventoryGrid.Cells[1, row] := Form3.inventoryquery.Fields[1].AsAnsiString;
         Form3.inventoryGrid.Cells[2, row] := Form3.inventoryquery.Fields[2].AsAnsiString;
         Form3.inventoryGrid.Cells[3, row] := Form3.inventoryquery.Fields[3].AsAnsiString;
         Form3.inventoryGrid.Cells[4, row] := Form3.inventoryquery.Fields[4].AsAnsiString;
         Form3.inventoryGrid.Cells[5, row] := FormatDateTime('yyyy-mm-dd',StrToDate(Form3.inventoryquery.Fields[5].AsAnsiString));
         Form3.inventoryGrid.Cells[6, row] := Form3.inventoryquery.Fields[6].AsAnsiString;
         Form3.inventoryGrid.Cells[7, row] := Form3.inventoryquery.Fields[7].AsAnsiString;
         Form3.inventoryGrid.Cells[8, row] := Form3.inventoryquery.Fields[0].AsAnsiString;
         if(Form3.inventoryquery.Fields[7].AsAnsiString = '0')then
         begin
             Form3.inventoryGrid.Cells[9, row] := Form3.inventoryquery.Fields[11].AsAnsiString
         end
         else
         begin
             if(Form3.inventoryquery.Fields[11].AsAnsiString = '0')then
             begin
                  Form3.inventoryGrid.Cells[9, row] := '0';
             end
             else
             begin
                 Form3.inventoryGrid.Cells[9, row] := FloatToStr(StrToFloat(Form3.inventoryquery.Fields[7].AsAnsiString) / StrToFloat(Form3.inventoryquery.Fields[11].AsAnsiString));
             end;

         end;
         Form3.inventoryquery.Next;
     end;
  finally
     Form3.inventoryGrid.AutoSizeColumn(2);
     Form3.inventoryquery.Close;
     Form3.inventorymysql.Connected:=False;
  end;
end;

procedure TInventory.getDeleted;
var
   row: integer;
begin
  try
    Form11.deletedMysql.Connected:= true;
    Form11.deletedQuery.SQL.Text := 'SELECT * FROM inventory WHERE deleted = 1';
    Form11.deletedQuery.Open;

    Form11.deletedGrid.RowCount := 1;
     while not Form11.deletedQuery.EOF do begin
         row := Form11.deletedGrid.RowCount;
         Form11.deletedGrid.RowCount := row + 1;
         Form11.deletedGrid.Cells[0,0] := 'No.';
         Form11.deletedGrid.Cells[0,row] := row.ToString;
         Form11.deletedGrid.Cells[1, row] := Form11.deletedQuery.Fields[1].AsAnsiString;
         Form11.deletedGrid.Cells[2, row] := Form11.deletedQuery.Fields[2].AsAnsiString;
         Form11.deletedGrid.Cells[3, row] := Form11.deletedQuery.Fields[3].AsAnsiString;
         Form11.deletedGrid.Cells[4, row] := Form11.deletedQuery.Fields[4].AsAnsiString;
         Form11.deletedGrid.Cells[5, row] := FormatDateTime('yyyy-mm-dd',StrToDate(Form11.deletedQuery.Fields[5].AsAnsiString));
         Form11.deletedGrid.Cells[6, row] := Form11.deletedQuery.Fields[6].AsAnsiString;
         Form11.deletedGrid.Cells[7, row] := Form11.deletedQuery.Fields[7].AsAnsiString;
         Form11.deletedGrid.Cells[8, row] := Form11.deletedQuery.Fields[9].AsAnsiString;
         Form11.deletedQuery.Next;
     end;
  finally
     Form11.deletedGrid.AutoSizeColumn(2);
     Form11.deletedQuery.Close;
     Form11.deletedMysql.Connected:=False;
  end;
end;


end.

