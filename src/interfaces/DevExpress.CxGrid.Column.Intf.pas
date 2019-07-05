unit DevExpress.CxGrid.Column.Intf;

interface

uses CxGrid, cxGridDBTableView;

type
  /// <summary>
  ///   Interface that represents the features of a column of cxgrid.
  /// </summary>
  IDevExpressCxGridColumn = interface
    ['{24395D62-DBEB-4627-BEC2-04BC214A30A8}']
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
