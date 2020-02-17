program Samples;

uses
  Vcl.Forms,
  Samples.Main in 'src\Samples.Main.pas' {FrmSamples},
  DevExpress.CxGrid.Column.Core in '..\src\core\DevExpress.CxGrid.Column.Core.pas',
  DevExpress.CxGrid.Core in '..\src\core\DevExpress.CxGrid.Core.pas',
  DevExpress.Helper in '..\src\helpers\DevExpress.Helper.pas',
  DevExpress.CxGrid.Column.Intf in '..\src\interfaces\DevExpress.CxGrid.Column.Intf.pas',
  DevExpress.CxGrid.Intf in '..\src\interfaces\DevExpress.CxGrid.Intf.pas',
  DevExpress.Types in '..\src\types\DevExpress.Types.pas',
  DevExpress.CxGrid.Band.Intf in '..\src\interfaces\DevExpress.CxGrid.Band.Intf.pas',
  DevExpress.CxGrid.Band.Core in '..\src\core\DevExpress.CxGrid.Band.Core.pas',
  DevExpress.Consts in '..\src\const\DevExpress.Consts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSamples, FrmSamples);
  Application.Run;
end.
