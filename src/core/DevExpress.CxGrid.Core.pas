unit DevExpress.CxGrid.Core;

interface

uses DevExpress.CxGrid.Intf, CxGrid, DevExpress.Types;

type
  TDevExpressCxGrid = class(TInterfacedObject, IDevExpressCxGrid)
  private
    procedure SaveToFile(const AGrid: TcxGrid; const AFileType: TDevExpress4DelphiFileType = TDevExpress4DelphiFileType.Excel;
      const AExpand: Boolean = True; const AOpenFileAfter: Boolean = True);
  end;

implementation

uses Vcl.Dialogs, System.SysUtils, Winapi.ShellAPI, cxGridExportLink, Winapi.Windows;

{ TDevExpressCxGrid }

procedure TDevExpressCxGrid.SaveToFile(const AGrid: TcxGrid; const AFileType: TDevExpress4DelphiFileType; const AExpand,
  AOpenFileAfter: Boolean);
var
  SaveDialog: TSaveDialog;
begin
  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Filter := AFileType.GetDialogFilter;
    SaveDialog.DefaultExt := AFileType.GetFileExt;
    SaveDialog.InitialDir := ExtractFilePath(ParamStr(0));
    if SaveDialog.Execute then
    begin
      ExportGridToXLSX(SaveDialog.FileName, AGrid, AExpand);
      if AOpenFileAfter then
        ShellExecute(0, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
    end;
  finally
    SaveDialog.Free;
  end;
end;

end.
