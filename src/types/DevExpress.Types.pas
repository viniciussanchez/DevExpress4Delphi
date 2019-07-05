unit DevExpress.Types;

interface

type
{$SCOPEDENUMS ON}
  /// <summary>
  ///  Supported file types to save.
  /// </summary>
  TDevExpress4DelphiFileType = (Excel, TXT, HTML, XML);
{$SCOPEDENUMS OFF}

  /// <summary>
  ///   Helper to TDevExpress4DelphiFileType.
  /// </summary>
  TDevExpress4DelphiFileTypeHelper = record helper for TDevExpress4DelphiFileType
    /// <summary>
    ///   Get filter for dialog.
    /// </summary>
    /// <returns>
    ///   Returns the filter for the dialog.
    /// </returns>
    function GetDialogFilter: string;
    /// <summary>
    ///   Get file extension.
    /// </summary>
    /// <returns>
    ///   Returns file extension.
    /// </returns>
    function GetFileExt: string;
  end;

implementation

{ TDevExpress4DelphiFileTypeHelper }

function TDevExpress4DelphiFileTypeHelper.GetDialogFilter: string;
begin
  case Self of
    TDevExpress4DelphiFileType.Excel:
      Result := 'Excel (*.xlsx) |*.xlsx';
    TDevExpress4DelphiFileType.TXT:
      Result := 'Text file (*.txt) |*.txt';
    TDevExpress4DelphiFileType.HTML:
      Result := 'HTML (*.html) |*.html';
    TDevExpress4DelphiFileType.XML:
      Result := 'XML (*.xml) |*.xml';
  end;
end;

function TDevExpress4DelphiFileTypeHelper.GetFileExt: string;
begin
  case Self of
    TDevExpress4DelphiFileType.Excel:
      Result := 'xlsx';
    TDevExpress4DelphiFileType.TXT:
      Result := 'txt';
    TDevExpress4DelphiFileType.HTML:
      Result := 'html';
    TDevExpress4DelphiFileType.XML:
      Result := 'xml';
  end;
end;

end.
