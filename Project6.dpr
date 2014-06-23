program Project6;

uses
  Vcl.Forms,
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'C:\Users\Fernando Bueno\Documents\Embarcadero\Studio\Projects\Unit11.pas' {DataModule11: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TDataModule11, DataModule11);
  Application.Run;
end.
