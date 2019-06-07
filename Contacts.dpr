program Contacts;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  DatasModule in 'DatasModule.pas' {Datas: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDatas, Datas);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
