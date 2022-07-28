unit DevExpress.CxGrid.Column.Intf;

interface

uses CxGrid, cxGridDBTableView;

type
  /// <summary>
  ///   Interface that represents the features of a column of cxgrid.
  /// </summary>
  IDevExpressCxGridColumn = interface
    ['{F6E16258-2178-4F61-BDF6-1BC476B6E20B}']
    /// <summary>
    ///   Adjust the size of the column to fill any remaining space.
    /// </summary>
    /// <param name="AColumn">
    ///   Column that must be resized.
    /// </param>
    /// <param name="AMaxWidth">
    ///   Maximum column width.
    /// </param>
    procedure AdjustColumnSize(const AColumn: TcxGridDBColumn; const AMaxWidth: Integer);
  end;

implementation

end.
