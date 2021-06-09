unit MainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Grids, ExtCtrls, Buttons, LR_Class, LR_DSet, mainClass;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    expiredMonthGrid: TStringGrid;
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblrights: TLabel;
    lblUserName: TLabel;
    lblTime: TLabel;
    MainMysql: TMySQL57Connection;
    MainQuery: TSQLQuery;
    MainTransaction: TSQLTransaction;
    expiredGrid: TStringGrid;
    ofsGrid: TStringGrid;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frUserDataset1First(Sender: TObject);
    procedure frUserDataset1Next(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  kk : longint;
implementation
uses
  Invetory,
  Login,
  inventory,
  POS,
  Report,
  AccountManagement,
  information;
{$R *.lfm}

{ TForm2 }



procedure TForm2.Image2Click(Sender: TObject);
  var
    inventory : TInventory;
begin
  inventory := TInventory.Create;
  inventory.loadData;


  Form3.BitBtn7.Visible:= True;
  Form3.BitBtn8.Visible:= True;
  Form3.productid.ReadOnly:= True;
  Form3.productbrand.ReadOnly:=False;
  Form3.productname.ReadOnly:=False;
  Form3.producttype.ReadOnly:=False;

  Form3.Button2.Visible:= True;
  Form3.Button5.Visible:= True;
  Form3.BitBtn6.Visible:= True;
  Form3.Button4.Visible:= True;
  Form3.productstock.Visible:= False;
  Form3.productprice.Visible:= False;
  Form3.productsack.Visible:= False;

  Form3.Caption:= 'Invetory';
  Form3.GroupBox1.Caption:= 'Invetory';
  Form3.ShowModal;
end;

procedure TForm2.Image3Click(Sender: TObject);
  var
    inventory : TInventory;
begin
  inventory := TInventory.Create;
  inventory.loadData;


  Form3.BitBtn7.Visible:= False;
  Form3.BitBtn8.Visible:= False;
  Form3.productid.ReadOnly:= True;
  Form3.productbrand.ReadOnly:=True;
  Form3.productname.ReadOnly:=True;
  Form3.producttype.ReadOnly:=True;

  Form3.Button2.Visible:= False;
  Form3.Button5.Visible:= False;
  Form3.BitBtn6.Visible:= False;
  Form3.Button4.Visible:= False;

  Form3.productstock.Visible:= True;
  Form3.productprice.Visible:= True;
  Form3.productsack.Visible:= True;
  Form3.Caption:= 'Stocks';
  Form3.GroupBox1.Caption:= 'Stocks';
  Form3.ShowModal;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
  Form5.ShowModal;
end;


procedure TForm2.Timer1Timer(Sender: TObject);
begin
  self.lblTime.Caption:= FormatDateTime('yyyy-mm-dd hh:mm:ss',Now);
end;

procedure TForm2.FormShow(Sender: TObject);
var                 kk : longint;
  mainClass : TMainInfo;
begin
  mainClass := TMainInfo.Create;
  mainClass.LoadExpireproducts;
  mainClass.LoadExpiredMonthProducts;
  mainClass.LoadOutOfSTocks;
  self.ShowInTaskBar:= stAlways;

  if(self.lblrights.Caption = '0')then
  begin
    self.Image2.Visible:= False;
    self.Image6.Visible:= True;
    self.Image5.Visible:= False;
    self.Label1.Visible:= False;
    self.Label4.Visible:= True;
    self.Label5.Visible:= False;
    self.Image3.Visible:= False;
    self.Label8.Visible:= False;
  end
  else
  begin
    self.Image2.Visible:= True;
    self.Image6.Visible:= True;
    self.Image5.Visible:= True;
    self.Label1.Visible:= True;
    self.Label4.Visible:= True;
    self.Label5.Visible:= True;
    self.Image3.Visible:= True;
    self.Label8.Visible:= True;
  end;
end;

procedure TForm2.frReport1GetValue(const ParName: String; var ParValue: Variant
  );
begin
  if ParName = 'ProductId' then
  begin
   ParValue := self.expiredMonthGrid.Cells[1,kk];
  end;

  if ParName = 'ProductName' then
  begin
   ParValue := self.expiredMonthGrid.Cells[2,kk];
  end;

  if ParName = 'ExpirationDate' then
  begin
   ParValue := self.expiredMonthGrid.Cells[3,kk];
  end;

  if ParName = 'ExpirationDays' then
  begin
   ParValue := self.expiredMonthGrid.Cells[4,kk];
  end;
end;

procedure TForm2.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
  Eof := kk > self.expiredMonthGrid.RowCount -1;
end;

procedure TForm2.frUserDataset1First(Sender: TObject);
begin
 kk := 1;
end;

procedure TForm2.frUserDataset1Next(Sender: TObject);
begin
 Inc(kk)
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin

end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  frReport1.LoadFromFile('monthly.lrf');
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  logout : TInformation;
begin
  logout := TInformation.Create;
  if MessageDlg('Question', 'Do you wish to Logout?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    logout.insertActivity('Log-out');
    self.Hide;
    Form1.Show;

  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  frReport1.ShowReport;
end;

end.

