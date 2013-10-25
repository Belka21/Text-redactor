unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Menus;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    FontDialog1: TFontDialog;
    Label1: TLabel;
    Label2: TLabel;
    PrintDialog1: TPrintDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    N10: TMenuItem;
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
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:integer;
implementation

uses Unit2;

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

 i:=pos(UpperCase(Form2.Edit1.Text),UpperCase(Memo1.Lines.Text));
 if i<>0 then begin
 Memo1.SelStart:=i-1;
 Memo1.SelLength:=length(Form2.Edit1.Text);
 Memo1.SetFocus;
end else ShowMessage('���������');   end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Button5Click(Sender);
 if i<>0 then
 memo1.SelText:=Form2.Edit2.Text;
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

 i:=pos(Form2.Edit1.Text,Memo1.Lines.Text);
 if i<>0 then begin
 Memo1.SelStart:=i-1;
 Memo1.SelLength:=length(Form2.Edit1.Text);
 Memo1.SetFocus;
end else ShowMessage('���������');   end;


procedure TForm1.N2Click(Sender: TObject);
begin
if PrintDialog1.Execute
then
//Memo1.Lines.printtofile(PrintDialog1.FileName);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
if SaveDialog1.Execute then
 Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 if OpenDialog1.Execute
 then
 Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form2.Visible:=True;
Form2.Button1.Visible:=True;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form2.Visible:=True;
Form2.Button2.Visible:=true;
form2.Edit2.Visible:=true;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Memo1.Undo;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Memo1.SelStart:=0;
 Memo1.SelLength:=length(Memo1.Text);
 Memo1.SetFocus;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
 if FontDialog1.Execute
 then Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
ShowMessage('��� ���������� ������� ��� ����� � ����� ����� ��� ������'+#13+'��� �������� ����� �������� ���� ���������� �������'+#13'��� ���������� ������ ������� ������ ��� ����� ��� ����� � ������� ����� ������ ����� ����� ���������'
+#13'��� ������ ������ � ����������� ���� ������� ����� ������� ������ �������� � ������� �� ����� ������ �������� � �.�.'+#13'');
end;

procedure TForm1.N14Click(Sender: TObject);
begin
ShowMessage('����� ���������');
end;

procedure TForm1.N10Click(Sender: TObject);
begin
Memo1.Lines.Text:=Memo1.Lines.Text+#13+DateTimetostr(Now);
end;

end.
