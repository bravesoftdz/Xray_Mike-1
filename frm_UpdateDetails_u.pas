unit frm_UpdateDetails_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, jpeg, GIFImg, ExtCtrls;

type
  TForm6 = class(TForm)
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
    edt9: TEdit;
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
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    dtp3: TDateTimePicker;
    edt6: TEdit;
    lbl7: TLabel;
    lbl11: TLabel;
    lbl10: TLabel;
    edt7: TEdit;
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
    chk1: TCheckBox;
    chk2: TCheckBox;
    dtp5: TDateTimePicker;
    dtp6: TDateTimePicker;
    btn10: TButton;
    procedure btn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn10Click(Sender: TObject);
begin
Self.Close;
end;

end.
