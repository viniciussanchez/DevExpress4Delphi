unit Samples.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrmSamples = class(TForm)
    GridColumnSampleDBTableView: TcxGridDBTableView;
    GridColumnSampleLevel: TcxGridLevel;
    GridColumnSample: TcxGrid;
    mtSamples: TFDMemTable;
    dsSamples: TDataSource;
    mtSamplesID: TIntegerField;
    mtSamplesNAME: TStringField;
    GridColumnSampleDBTableViewID: TcxGridDBColumn;
    GridColumnSampleDBTableViewNAME: TcxGridDBColumn;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GridBandSample: TcxGrid;
    GridBandSampleLevel: TcxGridLevel;
    GridBandSampleDBBandedTableView: TcxGridDBBandedTableView;
    GridBandSampleDBBandedTableViewID: TcxGridDBBandedColumn;
    GridBandSampleDBBandedTableViewNAME: TcxGridDBBandedColumn;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  end;

var
  FrmSamples: TFrmSamples;

implementation

{$R *.dfm}

uses DevExpress.Helper;

procedure TFrmSamples.Button1Click(Sender: TObject);
begin
  GridColumnSampleDBTableViewNAME.Resize();
end;

procedure TFrmSamples.Button2Click(Sender: TObject);
begin
  GridColumnSample.ExportToHTML();
end;

procedure TFrmSamples.Button3Click(Sender: TObject);
begin
  GridColumnSample.ExportToTXT();
end;

procedure TFrmSamples.Button4Click(Sender: TObject);
begin
  GridColumnSample.ExportToExcel();
end;

procedure TFrmSamples.Button5Click(Sender: TObject);
begin
  GridColumnSample.ExportToXML();
end;

procedure TFrmSamples.Button6Click(Sender: TObject);
begin
  // You can acess by the band index: GridBandSampleDBBandedTableView.Bands.Items[0].Resize();
  GridBandSampleDBBandedTableView.Bands.FirstVisibleNonEmpty.Resize();
end;

procedure TFrmSamples.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  if not mtSamples.Active then
    mtSamples.Open;
  for I := 0 to 20 do
  begin
    mtSamples.Append;
    mtSamplesID.AsInteger := I;
    mtSamplesNAME.AsString := 'Sample name ' + I.ToString;
    mtSamples.Post;
  end;
end;

end.
