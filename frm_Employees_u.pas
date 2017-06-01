unit frm_Employees_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, pngimage, jpeg, GIFImg;

type
  TForm4 = class(TForm)
    img2: TImage;
    img4: TImage;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    grp2: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    pnl1: TPanel;
    lbl7: TLabel;
    img3: TImage;
    img1: TImage;
    grp1: TGroupBox;
    shp2: TShape;
    img5: TImage;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn3: TButton;
    shp3: TShape;
    img6: TImage;
    procedure lbl6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  frm_MainMenu_u;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  pnl1.Hide;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  if Form2.PC.GetState = 'Admin' then
    grp2.Show
  else
    grp2.Hide;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.lbl6Click(Sender: TObject);
begin
  if lbl9.Visible = True then
  begin
    lbl9.Visible := False;
    lbl8.Visible := False;
    lbl6.Caption := 'View Shift Info..';
  end
  else
  begin
    lbl9.Visible := True;
    lbl8.Visible := True;
    lbl6.Caption := 'Hide Shift Info..';

  end;
end;

end.


