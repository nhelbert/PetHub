unit Forgot;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
    Ans1: TEdit;
    Ans2: TEdit;
    Button1: TButton;
    empCode: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lblq1: TLabel;
    lblq2: TLabel;
    lblq3: TLabel;
    lblAns1: TLabel;
    lblAns2: TLabel;
    lblAns3: TLabel;
    secQ1: TComboBox;
    secQ2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure empCodeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form10: TForm10;

implementation
uses
  information,MainForm,Login;

{$R *.lfm}

{ TForm10 }

procedure TForm10.empCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   Forgot : TForgot;
begin
   Forgot := TForgot.Create;
   Forgot.getForgot(self.empCode.Text);
end;

procedure TForm10.Button1Click(Sender: TObject);

begin


  if(self.secQ1.Text = self.lblq1.Caption) and (self.lblAns1.Caption = self.Ans1.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show;
  end
  else if(self.secQ1.Text = self.lblq2.Caption) and (self.lblAns2.Caption = self.Ans1.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show
  end
  else if(self.secQ1.Text = self.lblq3.Caption) and (self.lblAns3.Caption = self.Ans1.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show;
  end
  else if(self.secQ2.Text = self.lblq3.Caption) and (self.lblAns3.Caption = self.Ans2.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show;
  end
  else if(self.secQ2.Text = self.lblq3.Caption) and (self.lblAns3.Caption = self.Ans2.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show;
  end
  else if(self.secQ2.Text = self.lblq3.Caption) and (self.lblAns3.Caption = self.Ans2.Text) then
  begin
    self.Hide;
    Form1.Hide;
    Form2.Show;
  end
  else
  begin
    showmessage('Wrong Answer');
  end;
end;

end.

