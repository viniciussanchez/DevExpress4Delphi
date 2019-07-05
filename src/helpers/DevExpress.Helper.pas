unit DevExpress.Helper;

interface

uses CxGrid, DevExpress.Types, cxGridDBTableView;

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

implementation

uses DevExpress.CxGrid.Intf, DevExpress.CxGrid.Core, DevExpress.CxGrid.Column.Intf, DevExpress.CxGrid.Column.Core;

{ TcxGridHelper }

procedure TcxGridHelper.ExportToExcel(const AOpenFileAfter: Boolean = True; const AExpand: Boolean = True);
var
  DevExpressCxGrid: IDevExpressCxGrid;
begin
  DevExpressCxGrid := TDevExpressCxGrid.Create;
  DevExpressCxGrid.SaveToFile(Self, TDevExpress4DelphiFileType.Excel, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToHTML(const AOpenFileAfter, AExpand: Boolean);
var
  DevExpressCxGrid: IDevExpressCxGrid;
begin
  DevExpressCxGrid := TDevExpressCxGrid.Create;
  DevExpressCxGrid.SaveToFile(Self, TDevExpress4DelphiFileType.HTML, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToTXT(const AOpenFileAfter, AExpand: Boolean);
var
  DevExpressCxGrid: IDevExpressCxGrid;
begin
  DevExpressCxGrid := TDevExpressCxGrid.Create;
  DevExpressCxGrid.SaveToFile(Self, TDevExpress4DelphiFileType.TXT, AExpand, AOpenFileAfter);
end;

procedure TcxGridHelper.ExportToXML(const AOpenFileAfter, AExpand: Boolean);
var
  DevExpressCxGrid: IDevExpressCxGrid;
begin
  DevExpressCxGrid := TDevExpressCxGrid.Create;
  DevExpressCxGrid.SaveToFile(Self, TDevExpress4DelphiFileType.XML, AExpand, AOpenFileAfter);
end;

{ TcxGridDBColumnHelper }

procedure TcxGridDBColumnHelper.Resize(const AMaxWidth: Integer);
var
  DevExpressCxGridColumn: IDevExpressCxGridColumn;
begin
  DevExpressCxGridColumn := TDevExpressCxGridColumn.Create;
  DevExpressCxGridColumn.AdjustColumnSize(Self, AMaxWidth);
end;

end.
