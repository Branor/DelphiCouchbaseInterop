program CouchbasePOC;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DelphiCouchbaseInterop_TLB in 'DelphiCouchbaseInterop_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
