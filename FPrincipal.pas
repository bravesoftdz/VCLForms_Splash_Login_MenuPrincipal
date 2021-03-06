unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  FLogin;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormLogin.Free;
  Application.Terminate;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  FormLogin.Image1.Free;
  FormLogin.Height := 0;
  FormLogin.Width := 0;
end;

end.

