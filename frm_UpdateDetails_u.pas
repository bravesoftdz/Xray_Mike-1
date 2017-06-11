unit frm_UpdateDetails_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, StdCtrls, jpeg, GIFImg, ExtCtrls, DataModule, ExtDlgs;

type
  Tfrm_UpdateDetails = class(TForm)
    shp3: TShape;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    img1: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl9: TLabel;
    lbl8: TLabel;
    edtpName: TEdit;
    edtpSpec: TEdit;
    edtpStat: TEdit;
    edtpFreq: TEdit;
    edtpTime: TEdit;
    lbl1: TLabel;
    lbl5: TLabel;
    img_Plant: TImage;
    shp2: TShape;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edte_Cell: TEdit;
    btn4: TButton;
    img_Empl: TImage;
    btn5: TButton;
    btn6: TButton;
    lbl13: TLabel;
    shp1: TShape;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl6: TLabel;
    dtp_Bday: TDateTimePicker;
    dtp_Start: TDateTimePicker;
    dtp_End: TDateTimePicker;
    edte_Name: TEdit;
    lbl7: TLabel;
    lbl11: TLabel;
    lbl10: TLabel;
    edt_Eq_Name: TEdit;
    lbl21: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    img_Equip: TImage;
    btn7: TButton;
    shp4: TShape;
    btn8: TButton;
    btn9: TButton;
    chk_Stat: TCheckBox;
    chk_Replace: TCheckBox;
    dtp_EqS: TDateTimePicker;
    dtp_EqE: TDateTimePicker;
    btn10: TButton;
    dlgOpenPic1: TOpenPictureDialog;
    procedure btn10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ImagePath1: Widestring;
  end;

var
  frm_UpdateDetails: Tfrm_UpdateDetails;

implementation

{$R *.dfm}

procedure Tfrm_UpdateDetails.btn10Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_UpdateDetails.btn1Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    if not (dlgOpenPic1.FileName = '') then
    begin
      ImagePath1 := dlgOpenPic1.FileName;
      img_Plant.Picture.LoadFromFile(ImagePath1);
    end;
  end;

end;

procedure Tfrm_UpdateDetails.btn2Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to discard your changes...?', mtWarning, [mbYes, mbCancel], 0);
  if iBut = mrYes then
    Self.Close;
end;

procedure Tfrm_UpdateDetails.btn3Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to save your changes...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Plants.Edit;
      tbl_Plants['PlantName'] := edtpName.Text;
      tbl_Plants['PlantSpecies'] := edtpSpec.Text;
      tbl_Plants['Plant Status'] := edtpStat.Text;
      tbl_Plants['Watering frequency'] := edtpFreq.Text;
      tbl_Plants['Watering Time'] := edtpTime.Text;
      tbl_Plants['ImagePath'] := ImagePath1;
      tbl_Plants.Post;
    end;
    ShowMessage('Changes Saved');
    Self.Close;
  end;

end;

procedure Tfrm_UpdateDetails.btn4Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    if not (dlgOpenPic1.FileName = '') then
    begin
      ImagePath1 := dlgOpenPic1.FileName;
      img_Empl.Picture.LoadFromFile(ImagePath1);
    end;
  end;

end;

procedure Tfrm_UpdateDetails.btn5Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to save your changes...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Employees.Edit;
      tbl_Employees['Contact Number'] := edte_Cell.Text;
      tbl_Employees['First Name'] := edte_Name.Text;
      tbl_Employees['Birthday'] := dtp_Bday.Date;
      tbl_Employees['Shift Start'] := dtp_Start.Time;
      tbl_Employees['Shift End'] := dtp_End.Time;
      tbl_Employees['ImagePath'] := ImagePath1;
      tbl_Employees.Post;
    end;
    ShowMessage('Changes Saved');
    Self.Close;
  end;
end;

procedure Tfrm_UpdateDetails.btn6Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to discard your changes...?', mtWarning, [mbYes, mbCancel], 0);
  if iBut = mrYes then
    Self.Close;
end;

procedure Tfrm_UpdateDetails.btn7Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    if not (dlgOpenPic1.FileName = '') then
    begin
      ImagePath1 := dlgOpenPic1.FileName;
      img_Equip.Picture.LoadFromFile(ImagePath1);
    end;
  end;

end;

procedure Tfrm_UpdateDetails.btn8Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to save your changes...?', mtConfirmation, [mbYes, mbCancel], 0);
  if iBut = mrYes then
  begin
    //SAVE
    with DataModule1 do
    begin
      tbl_Equipment.Edit;
      tbl_Equipment['EquipType'] := edt_Eq_Name.Text;
      tbl_Equipment['Operrational'] := chk_Stat.Checked;
      tbl_Equipment['Replacement?'] := chk_Replace.Checked;
      tbl_Equipment['Repair end'] := dtp_EqS.Date;
      tbl_Equipment['Repair end'] := dtp_EqE.Date;
      tbl_Equipment['ImagePath'] := ImagePath1;
      tbl_Equipment.Post;
    end;
    ShowMessage('Changes Saved');
    Self.Close;
  end;
end;

procedure Tfrm_UpdateDetails.btn9Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to discard your changes...?', mtWarning, [mbYes, mbCancel], 0);
  if iBut = mrYes then
    Self.Close;
end;

procedure Tfrm_UpdateDetails.FormShow(Sender: TObject);
begin
  with DataModule1 do
  begin
  //Plants

    edtpName.Text := tbl_Plants['PlantName'];
    edtpSpec.Text := tbl_Plants['PlantSpecies'];
    edtpStat.Text := tbl_Plants['Plant Status'];
    edtpFreq.Text := tbl_Plants['Watering frequency'];
    edtpTime.Text := tbl_Plants['Watering Time'];


  //Employees
    edte_Cell.Text := tbl_Employees['Contact Number'];
    edte_Name.Text := tbl_Employees['First Name'];
    dtp_Bday.Date := tbl_Employees['Birthday'];
    dtp_Start.Time := StrToTime(tbl_Employees['Shift Start']);
    dtp_End.Time := StrToTime(tbl_Employees['Shift End']);


    //Equipment

    edt_Eq_Name.Text := tbl_Equipment['EquipType'];
    chk_Stat.Checked := tbl_Equipment['Operrational'];
    chk_Replace.Checked := tbl_Equipment['Replacement?'];
    dtp_EqS.Date := StrToDate(tbl_Equipment['Repair start']);
    dtp_EqE.Date := StrToDate(tbl_Equipment['Repair end']);

  end;

end;

end.


