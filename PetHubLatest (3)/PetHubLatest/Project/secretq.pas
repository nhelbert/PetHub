unit secretQ;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button1: TButton;
    secQ1: TComboBox;
    secQ2: TComboBox;
    secQ3: TComboBox;
    Ans1: TEdit;
    Ans2: TEdit;
    Ans3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form9: TForm9;

implementation
uses
  userClass,user;

{$R *.lfm}

{ TForm9 }

procedure TForm9.Button1Click(Sender: TObject);
var
  userData : TUserInfo;
begin
  userData := TUserInfo.Create;
  userData.InsertData;
  userData.loadData;
end;

end.

