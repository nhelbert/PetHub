unit gromming;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    groomingId: TLabeledEdit;
    groomingName: TLabeledEdit;
    groomingType: TLabeledEdit;
    groomingPrice: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation
uses
  inventory,
  Invetory;

{$R *.lfm}

{ TForm8 }

procedure TForm8.Button1Click(Sender: TObject);
var
  grooming : TInventory;
begin
  grooming := TInventory.Create;
  grooming.insertGrooming;
  grooming.loadData;

  self.Close;
end;

end.

