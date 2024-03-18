unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HandleCustomMessage(var Msg: TMessage);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.HandleCustomMessage(var Msg: TMessage);
var lx: TStringList;
begin
  // Aqui voc� pode implementar o tratamento da mensagem personalizada.
  // Por exemplo, exibir uma mensagem ou executar alguma a��o espec�fica.
  Writeln('Mensagem personalizada recebida!');

  // Voc� pode acessar informa��es adicionais da mensagem, se necess�rio:
  // Msg.WParam, Msg.LParam, Msg.Result, etc.
end;

var
  MyObj: TObject;
  Msg: TMessage;
begin
  try
    MyObj := TObject.Create;

    // Simulando o envio de uma mensagem personalizada (por exemplo, WM_USER + 1):
    Msg.Msg := WM_USER + 1;
    Msg.WParam := 0;
    Msg.LParam := 0;

    // Chama o m�todo Dispatch para lidar com a mensagem:
    MyObj.Dispatch(Msg);

    // Lembre-se de liberar o objeto quando n�o for mais necess�rio:
    MyObj.Free;
  except
    on E: Exception do
      Writeln('Erro: ' + E.Message);
  end;
end.

end.
