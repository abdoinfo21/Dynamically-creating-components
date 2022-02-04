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
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure message(Sender: TObject);
    procedure empty(Sender:TObject);
    procedure add(Sender:TObject);
  private

  public

  end;

var
  Form1: TForm1;
  memo:Tmemo;
  edit:Tedit;
  btn:Tbutton;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Add(Sender:TObject);
begin
  memo.Lines.add('mouse just exit memo');
end;

procedure TForm1.empty(Sender:TObject);
begin
  edit.Text:='';
end;

procedure TForm1.message(Sender: TObject);
begin
  ShowMessage('button click me clicked');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   btn:=Tbutton.Create(self);
   with btn as Tbutton do
   begin
   Parent:=form1;
   Top:=70;
   Left:=50;
   Height:=30;
   Width:=75;
   onclick:=@message;
   Caption:='click me';


   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit:=Tedit.Create(self);
  with edit as Tedit do
  begin
  Parent:=form1;
  Top:=120;
  Left:=80;
  Height:=30;
  Width:=75;
  OnEnter:=@empty;
  Text:='edit';
 end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  memo:=Tmemo.Create(self);
  with memo as Tmemo do
  begin
  Parent:=form1;
  Top:=180;
  Left:=80;
  Height:=180;
  Width:=175;
  OnMouseLeave:=@add;
  Text:='memo';
end;
   end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  btn.Free;
  edit.Free;
  memo.Free;
end;

 end.
