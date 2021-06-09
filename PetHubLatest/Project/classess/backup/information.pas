unit information;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;

type

    { TInformation }

    TInformation = class
      private
        Faddress: String;
        Fcontactnumber: String;
        FemployeeCode: String;
        FfullName: String;
        Frights: String;
      public
        constructor Create;
        destructor Destroy;
        property employeeCode : String read FemployeeCode write FemployeeCode;
        property fullName : String read FfullName write FfullName;
        property address : String read Faddress write Faddress;
        property rights : String read Frights write Frights;
        property contactnumber : String read Fcontactnumber write Fcontactnumber;

        procedure insertActivity(activity:String);
    end;

    { TForgot }

    TForgot = class
      private
        Fans1: String;
        Fans2: String;
        Fans3: String;
        FemployeeCode: String;
        FsecQ1: String;
        FsecQ2: String;
        FsecQ3: String;
      public
        constructor Create;
        destructor Destroy;
        property employeeCode : String read FemployeeCode write FemployeeCode;
        property secQ1 : String read FsecQ1 write FsecQ1;
        property secQ2 : String read FsecQ2 write FsecQ2;
        property secQ3 : String read FsecQ3 write FsecQ3;
        property ans1 : String read Fans1 write Fans1;
        property ans2 : String read Fans2 write Fans2;
        property ans3 : String read Fans3 write Fans3;

        procedure getForgot(empCode : String);

    end;

implementation
uses
  Login,
  MainForm,Forgot;

{ TForgot }

constructor TForgot.Create;
begin

end;

destructor TForgot.Destroy;
begin

end;

procedure TForgot.getForgot(empCode: String);
var
  i: integer;
begin
  try
     Form1.loginmysql.Connected:= true;
     Form1.loginquery.SQL.Text := 'select * from users where employeeCode = '+ quotedstr(empCode);
     Form1.loginquery.Open;

     while not Form1.loginquery.EOF do begin
       Inc(i);

       Form1.loginquery.Next;


       Form10.secQ1.Items.Clear;
       Form10.secQ2.Items.Clear;
       if(i > 0)then
       begin

       Form10.secQ1.Items.Add(Form1.loginquery.Fields[7].AsAnsiString);
       Form10.secQ1.Items.Add(Form1.loginquery.Fields[8].AsAnsiString);
       Form10.secQ1.Items.Add(Form1.loginquery.Fields[9].AsAnsiString);
       Form10.secQ2.Items.Add(Form1.loginquery.Fields[7].AsAnsiString);
       Form10.secQ2.Items.Add(Form1.loginquery.Fields[8].AsAnsiString);
       Form10.secQ2.Items.Add(Form1.loginquery.Fields[9].AsAnsiString);

        Form10.lblAns1.Caption   := Form1.loginquery.Fields[7].AsAnsiString;
       Form10.lblAns2.Caption   := Form1.loginquery.Fields[8].AsAnsiString;
       Form10.lblAns3.Caption   := Form1.loginquery.Fields[9].AsAnsiString;
       Form10.lblAns1.Caption := Form1.loginquery.Fields[10].AsAnsiString;
       Form10.lblAns2.Caption := Form1.loginquery.Fields[11].AsAnsiString;
       Form10.lblAns3.Caption := Form1.loginquery.Fields[12].AsAnsiString;
       end;


     end;
  finally
     Form1.loginquery.Close;
     Form1.loginmysql.Connected:= false;



  end;
end;

{ TInformation }

constructor TInformation.Create;
begin

end;

destructor TInformation.Destroy;
begin

end;

procedure TInformation.insertActivity(activity:String);
begin
  try
     Form1.loginmysql.Connected:= true;
     Form1.loginquery.SQL.Text:= 'INSERT INTO useractivity '+
     '(dateLog,user,activityLog) '+
     'values (:dateLog,:user,:activityLog)';
     Form1.loginquery.Params.ParamByName('dateLog').AsString        := FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
     Form1.loginquery.Params.ParamByName('user').AsString           := Form2.lblUserName.Caption;
     Form1.loginquery.Params.ParamByName('activityLog').AsString    := activity;
     Form1.loginquery.ExecSQL;
     Form1.loginTransaction.Commit;
  finally
     Form1.loginmysql.Connected:= false;
  end;
end;

end.

