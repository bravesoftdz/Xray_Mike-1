unit frm_MainMenu_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ImgList, pngimage, ExtCtrls, frm_Plants_u, frm_Employees_u, frm_Equipment, GIFImg, cls_ProgramControl;

type
  TForm2 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    il_Buttons: TImageList;
    img2: TImage;
    img1: TImage;
    shp3: TShape;
    img3: TImage;
    tmr1: TTimer;
    procedure btn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure Login(State: string);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PC: TControl;    //Program Controller

    const
      DefaultPath = 'no-image.jpg';    //Load it from a textfile
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses
  frm_Park_u , frm_Settings_u;

procedure TForm2.btn1Click(Sender: TObject);
begin
  Self.Hide;
  Form3.Show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  Self.Hide;
  Form4.Show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  Self.Hide;
  Form5.Show;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
Self.Hide;
frm_Settings_u.Form6.ShowModal;
Self.Show;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Show;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  (img3.Picture.Graphic as TGIFImage).Animate := True;
  tmr1.Enabled := True;
end;

procedure TForm2.Login(State: string);
begin
  PC := TControl.Create(State);
end;

procedure TForm2.tmr1Timer(Sender: TObject);
begin
  (img3.Picture.Graphic as TGIFImage).Animate := False;
  tmr1.Enabled := False;
end;

end.


