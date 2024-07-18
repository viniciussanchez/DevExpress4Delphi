unit DevExpress.CxGrid.Core;

interface

uses DevExpress.CxGrid.Intf, CxGrid, DevExpress.Types, Vcl.Dialogs, System.SysUtils, Winapi.ShellAPI, cxGridExportLink,
  Winapi.Windows;

type
  TDevExpressCxGrid = class(TInterfacedObject, IDevExpressCxGrid)
  private
    procedure SaveToFile(const AGrid: TcxGrid; const AFileType: TDevExpress4DelphiFileType; const AExpand, AOpenFileAfter: Boolean);
  public
    class function New: IDevExpressCxGrid;
  end;

implementation

class function TDevExpressCxGrid.New: IDevExpressCxGrid;
begin
  Result := TDevExpressCxGrid.Create;
end;

procedure TDevExpressCxGrid.SaveToFile(const AGrid: TcxGrid; const AFileType: TDevExpress4DelphiFileType; const AExpand,
  AOpenFileAfter: Boolean);
var
  LSaveDialog: TSaveDialog;
begin
  LSaveDialog := TSaveDialog.Create(nil);
  try
    LSaveDialog.Filter := AFileType.GetDialogFilter;
    LSaveDialog.DefaultExt := AFileType.GetFileExt;
    LSaveDialog.InitialDir := ExtractFilePath(ParamStr(0));
    if LSaveDialog.Execute then
    begin
      case AFileType of
        TDevExpress4DelphiFileType.EXCEL:
          ExportGridToXLSX(LSaveDialog.FileName, AGrid, AExpand);
        TDevExpress4DelphiFileType.TXT:
          ExportGridToText(LSaveDialog.FileName, AGrid, AExpand);
        TDevExpress4DelphiFileType.HTML:
          ExportGridToHTML(LSaveDialog.FileName, AGrid, AExpand);
        TDevExpress4DelphiFileType.XML:
          ExportGridToXML(LSaveDialog.FileName, AGrid, AExpand);
      end;
      if AOpenFileAfter then
        ShellExecute(0, 'open', pchar(LSaveDialog.FileName), nil, nil, SW_SHOW);
    end;
  finally
    LSaveDialog.Free;
  end;
end;

end.
