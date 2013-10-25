unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unit1, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if CheckBox1.Checked=False then
begin
i:=pos(UpperCase(Edit1.Text),UpperCase(Form1.Memo1.Lines.Text));
 if i<>0 then begin
 Form1.Memo1.SelStart:=i-1;
 Form1.Memo1.SelLength:=length(Edit1.Text);
 Form1.Memo1.SetFocus;
 Form2.Visible:=False;
end else
 begin
 Form2.Visible:=False;
 ShowMessage('ненайдено');
 end;
end
 else if CheckBox1.Visible=True
 then
 begin
  i:=pos(Edit1.Text,Form1.Memo1.Lines.Text);
 if i<>0 then begin
 Form1.Memo1.SelStart:=i-1;
 Form1.Memo1.SelLength:=length(Edit1.Text);
 Form1.Memo1.SetFocus;
 Form2.Visible:=False;
 end
 else
 begin
 Form2.Visible:=False;
 ShowMessage('ненайдено');
 end;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Button1Click(Sender);
 if i<>0 then
 Form1.Memo1.SelText:=Form2.Edit2.Text;
end;

end.
