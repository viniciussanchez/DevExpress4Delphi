unit DevExpress.CxGrid.Intf;

interface

uses CxGrid, DevExpress.Types;

type
  /// <summary>
  ///   Interface that represents the features of a cxgrid.
  /// </summary>
  IDevExpressCxGrid = interface
    ['{75FD547D-C2E2-4E02-B5B2-A4B0A21E382E}']
    /// <summary>
    ///   Exports the contents of a TCxGrid.
    /// </summary>
    /// <param name="AGrid">
    ///   Grid to be exported.
    /// </param>
    /// <param name="AFileType">
    ///   File type. Default is excel (.xlsx)
    /// </param>
    /// <param name="AExpand">
    ///   Expand records. Default is True.
    /// </param>
    /// <param name="AOpenFileAfter">
    ///   Open file after export. Default is True.
    /// </param>
    procedure SaveToFile(const AGrid: TcxGrid; const AFileType: TDevExpress4DelphiFileType = TDevExpress4DelphiFileType.Excel;
      const AExpand: Boolean = True; const AOpenFileAfter: Boolean = True);
  end;

implementation

end.
