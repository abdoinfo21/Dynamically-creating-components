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
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

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
     btn:Tbutton;
begin
   btn:=Tbutton.Create(self);
   with btn as Tbutton do
   begin
   Parent:=form1;
   Top:=70;
   Left:=50;
   Height:=30;
   Width:=75;
   Caption:='click me';


   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
     edit:Tedit;
begin
  edit:=Tedit.Create(self);
  with edit as Tedit do
  begin
  Parent:=form1;
  Top:=120;
  Left:=80;
  Height:=30;
  Width:=75;
  Text:='edit';
 end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
     memo:Tmemo;
begin
  memo:=Tmemo.Create(self);
  with memo as Tmemo do
  begin
  Parent:=form1;
  Top:=180;
  Left:=80;
  Height:=180;
  Width:=175;
  Text:='memo';
end;
   end;

 end.
