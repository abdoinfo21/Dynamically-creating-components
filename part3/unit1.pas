unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
  lab:TLabel;
begin
  for i :=0 to 5 do
  begin
    lab:=TLabel.Create(self);
    lab.Parent:=form1;
    lab.Name:='lab_'+inttostr(i);
    lab.caption:='lab_'+inttostr(i);
    lab.Top:=80 + (i*30);
    lab.left:=30;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
TLabel(FindComponent('lab_'+edit1.Text)).Destroy;
end;

end.

