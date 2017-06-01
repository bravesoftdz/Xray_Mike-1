unit cls_ProgramControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ImgList, pngimage, ExtCtrls, frm_Plants_u, frm_Employees_u, frm_Equipment, GIFImg;

type
  TControl = class(TObject)
  private
    fState: string;
    fPassword: string;
  public
    function GetState: string;
    function GetPassword: string;
    procedure SetPassword(PASS: string);
    constructor Create(STATE: string);
  end;

implementation

{ TControl }

constructor TControl.Create(STATE: string);
begin
  fState := State;
  fPassword := '1234';
end;

function TControl.GetPassword: string;
begin
  Result := fPassword;
end;

function TControl.GetState: string;
begin
Result := fState;
end;

procedure TControl.SetPassword(PASS: string);
begin
  fPassword := PASS;
end;

end.


