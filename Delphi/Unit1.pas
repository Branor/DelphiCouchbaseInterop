unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DelphiCouchbaseInterop_TLB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Couchbase: ICouchbaseFacade;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Couchbase := CoCouchbaseFacade.Create;
  Couchbase.Upsert('_test', 'hello world!');
  ShowMessage('Result: ' + Couchbase.Get('_test'));
end;

end.
