unit frm_AddDetails_u;

interface

uses
  Windows, Messages, DataModule, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtDlgs, StdCtrls, ComCtrls, jpeg, GIFImg, ExtCtrls;

type
  Tfrm_Add = class(TForm)
    shp3: TShape;
    img1: TImage;
    pgc1: TPageControl;
    ts1: TTabSheet;
    shp2: TShape;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl9: TLabel;
    lbl8: TLabel;
    lbl1: TLabel;
    lbl5: TLabel;
    img_Plant: TImage;
    edtpName: TEdit;
    edtpSpec: TEdit;
    edtpStat: TEdit;
    edtpFreq: TEdit;
    edtpTime: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    ts2: TTabSheet;
    shp1: TShape;
    img_Empl: TImage;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edte_Cell: TEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dtp_Bday: TDateTimePicker;
    dtp_Start: TDateTimePicker;
    dtp_End: TDateTimePicker;
    edte_Name: TEdit;
    ts3: TTabSheet;
    shp4: TShape;
    img_Equip: TImage;
    lbl11: TLabel;
    lbl10: TLabel;
    lbl21: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    btn7: TButton;
    edt_Eq_Name: TEdit;
    btn8: TButton;
    btn9: TButton;
    chk_Stat: TCheckBox;
    chk_Replace: TCheckBox;
    dtp_EqS: TDateTimePicker;
    dtp_EqE: TDateTimePicker;
    btn10: TButton;
    dlgOpenPic1: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImagePath: WideString;
  end;

var
  frm_Add: Tfrm_Add;

implementation

{$R *.dfm}

procedure Tfrm_Add.btn10Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_Add.btn1Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    if not (dlgOpenPic1.FileName = '') then
    begin
      ImagePath := dlgOpenPic1.FileName;
      img_Empl.Picture.LoadFromFile(ImagePath);
    end;
  end;
end;

procedure Tfrm_Add.btn2Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you do not want to add a new listing...?', mtWarning, [mbYes, mbCancel], 0);
  if iBut = mrYes then
    Self.Close;
end;

procedure Tfrm_Add.btn3Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to add Plant...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Plants.Insert;
      tbl_Plants['PlantName'] := edtpName.Text;
      tbl_Plants['PlantSpecies'] := edtpSpec.Text;
      tbl_Plants['Plant Status'] := edtpStat.Text;
      tbl_Plants['Watering frequency'] := edtpFreq.Text;
      tbl_Plants['Watering Time'] := edtpTime.Text;
      tbl_Plants['ImagePath'] := ImagePath;
      tbl_Plants.Post;
    end;
    ShowMessage('Plant Added');
    Self.Close;
  end;
end;

procedure Tfrm_Add.btn5Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to  add Employee ...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Employees.Insert;
      tbl_Employees['Contact Number'] := edte_Cell.Text;
      tbl_Employees['First Name'] := edte_Name.Text;
      tbl_Employees['Birthday'] := dtp_Bday.Date;
      tbl_Employees['Shift Start'] := dtp_Start.Time;
      tbl_Employees['Shift End'] := dtp_End.Time;
      tbl_Employees['ImagePath'] := ImagePath;
      tbl_Employees.Post;
    end;
    ShowMessage('Employee Added');
    Self.Close;
  end;
end;

procedure Tfrm_Add.btn8Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to add Equipment...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Equipment.Insert;
      tbl_Equipment['EquipType'] := edt_Eq_Name.Text;
      tbl_Equipment['Operrational'] := chk_Stat.Checked;
      tbl_Equipment['Replacement?'] := chk_Replace.Checked;
      tbl_Equipment['Repair end'] := dtp_EqS.Date;
      tbl_Equipment['Repair end'] := dtp_EqE.Date;
      tbl_Equipment['ImagePath'] := ImagePath;
      tbl_Equipment.Post;
    end;
    ShowMessage('Equipment Added');
    Self.Close;
  end;
end;

procedure Tfrm_Add.FormShow(Sender: TObject);
begin
//Plants

  edtpName.Text := '';
  edtpSpec.Text := '';
  edtpStat.Text := '';
  edtpFreq.Text := '';
  edtpTime.Text := '';


  //Employees
  edte_Cell.Text := '';
  edte_Name.Text := '';
  dtp_Bday.Date := Now;
  dtp_Start.Time := Now;
  dtp_End.Time := Now;


    //Equipment

  edt_Eq_Name.Text := '';
  chk_Stat.Checked := False;
  chk_Replace.Checked := False;
  dtp_EqS.Date := Now;
  dtp_EqE.Date := Now;

  ImagePath := '';

end;

end.


