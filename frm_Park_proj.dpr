program frm_Park_proj;

uses
  Forms,
  frm_Park_u in 'frm_Park_u.pas' {Form1},
  frm_MainMenu_u in 'frm_MainMenu_u.pas' {Form2},
  frm_Plants_u in 'frm_Plants_u.pas' {Form3},
  frm_Employees_u in 'frm_Employees_u.pas' {Form4},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  frm_Equipment in 'frm_Equipment.pas' {Form5},
  cls_ProgramControl in 'cls_ProgramControl.pas',
  frm_UpdateDetails_u in 'frm_UpdateDetails_u.pas' {frm_UpdateDetails},
  frm_AddDetails_u in 'frm_AddDetails_u.pas' {frm_Add},
  frm_Settings_u in 'frm_Settings_u.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tfrm_UpdateDetails, frm_UpdateDetails);
  Application.CreateForm(Tfrm_Add, frm_Add);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
