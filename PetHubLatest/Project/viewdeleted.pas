unit viewdeleted;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Grids;

type

  { TForm11 }

  TForm11 = class(TForm)
    Image1: TImage;
    deletedMysql: TMySQL57Connection;
    deletedQuery: TSQLQuery;
    deletedTransaction: TSQLTransaction;
    deletedGrid: TStringGrid;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form11: TForm11;

implementation
uses
  inventory;

{$R *.lfm}

{ TForm11 }

procedure TForm11.FormShow(Sender: TObject);
var
  viewDeleted : TInventory;
begin
  viewDeleted := TInventory.Create;
  viewDeleted.getDeleted;
end;

end.

