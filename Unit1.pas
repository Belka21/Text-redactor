unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    Button4: TButton;
    FontDialog1: TFontDialog;
    Edit1: TEdit;
    Button5: TButton;
    Edit3: TEdit;
    Button6: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
 Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if OpenDialog1.Execute
 then
 Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Memo1.Undo;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 if FontDialog1.Execute
 then Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

 i:=pos(UpperCase(Edit1.Text),UpperCase(Memo1.Lines.Text));
 if i<>0 then begin
 Memo1.SelStart:=i-1;
 Memo1.SelLength:=length(Edit1.Text);
 Memo1.SetFocus;
end else ShowMessage('ненайдено');   end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Button5Click(Sender);
 if i<>0 then
 memo1.SelText:=Edit3.Text;
end;

procedure TForm1.Memo1Click(Sender: TObject);
begin

Label1.Caption:=inttostr(Memo1.caretpos.x);
Label2.Caption:=IntToStr(Memo1.caretpos.y);
end;

procedure TForm1.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Label1.Caption:=inttostr(Memo1.caretpos.y);
 Label2.Caption:=IntToStr(Memo1.caretpos.x);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin

 i:=pos(Edit1.Text,Memo1.Lines.Text);
 if i<>0 then begin
 Memo1.SelStart:=i-1;
 Memo1.SelLength:=length(Edit1.Text);
 Memo1.SetFocus;
end else ShowMessage('ненайдено');   end;


end.
