unit DevExpress.Helper;

interface

uses CxGrid, DevExpress.Types, cxGridDBTableView, cxGridBandedTableView, DevExpress.CxGrid.Core, DevExpress.CxGrid.Column.Core,
  DevExpress.CxGrid.Band.Core;

type
  /// <summary>
  ///   Class helper to TcxGrid.
  /// </summary>
  TcxGridHelper = class helper for TcxGrid
    /// <summary>
    ///   Exports the contents of a TCxGrid to excel.
    /// </summary>
    /// <param name="AOpenFileAfter">
    ///   Open file after export. Default is True.
    /// </param>
    /// <param name="AExpand">
    ///   Expand records. Default is True.
    /// </param>
    procedure ExportToExcel(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
    /// <summary>
    ///   Exports the contents of a TCxGrid to HTML.
    /// </summary>
    /// <param name="AOpenFileAfter">
    ///   Open file after export. Default is True.
    /// </param>
    /// <param name="AExpand">
    ///   Expand records. Default is True.
    /// </param>
    procedure ExportToHTML(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
    /// <summary>
    ///   Exports the contents of a TCxGrid to file text.
    /// </summary>
    /// <param name="AOpenFileAfter">
    ///   Open file after export. Default is True.
    /// </param>
    /// <param name="AExpand">
    ///   Expand records. Default is True.
    /// </param>
    procedure ExportToTXT(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
    /// <summary>
    ///   Exports the contents of a TCxGrid to XML.
    /// </summary>
    /// <param name="AOpenFileAfter">
    ///   Open file after export. Default is True.
    /// </param>
    /// <param name="AExpand">
    ///   Expand records. Default is True.
    /// </param>
    procedure ExportToXML(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
  end;

  /// <summary>
  ///   Class helper to TcxGridDBColumn.
  /// </summary>
  TcxGridDBColumnHelper = class helper for TcxGridDBColumn
    /// <summary>
    ///   Adjust the size of the column to fill any remaining space.
    /// </summary>
    /// <param name="AMaxWidth">
    ///   Maximum column width.
    /// </param>
    procedure Resize(const AMaxWidth: Integer = 0);
  end;

  /// <summary>
  ///   Class helper to TcxGridBand.
  /// </summary>
  TcxGridBandHelper = class helper for TcxGridBand
    /// <summary>
    ///   Adjust the size of the band to fill any remaining space.
    /// </summary>
    /// <param name="AMaxWidth">
    ///   Maximum band width.
    /// </param>
    procedure Resize(const AMaxWidth: Integer = 0);
  end;

implementation

procedure TcxGridHelper.ExportToExcel(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
begin
  TDevExpressCxGrid.New.SaveToFile(Self, TDevExpress4DelphiFileType.EXCEL, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToHTML(const AOpenFileAfter, AExpand: Boolean);
begin
  TDevExpressCxGrid.New.SaveToFile(Self, TDevExpress4DelphiFileType.HTML, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToTXT(const AOpenFileAfter, AExpand: Boolean);
begin
  TDevExpressCxGrid.New.SaveToFile(Self, TDevExpress4DelphiFileType.TXT, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToXML(const AOpenFileAfter, AExpand: Boolean);
begin
  TDevExpressCxGrid.New.SaveToFile(Self, TDevExpress4DelphiFileType.XML, AExpand, AOpenFileAfter);
end;

procedure TcxGridDBColumnHelper.Resize(const AMaxWidth: Integer);
begin
  TDevExpressCxGridColumn.New.AdjustColumnSize(Self, AMaxWidth);
end;

procedure TcxGridBandHelper.Resize(const AMaxWidth: Integer);
begin
  TDevExpressCxGridBand.New.AdjustBandSize(Self, AMaxWidth);
end;

end.
