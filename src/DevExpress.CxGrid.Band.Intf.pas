unit DevExpress.CxGrid.Band.Intf;

interface

uses CxGrid, cxGridBandedTableView;

type
  /// <summary>
  ///   Interface that represents the features of a band of cxgrid.
  /// </summary>
  IDevExpressCxGridBand = interface
    ['{24395D62-DBEB-4627-BEC2-04BC214A30A8}']
    /// <summary>
    ///   Adjust the size of the band to fill any remaining space.
    /// </summary>
    /// <param name="ABand">
    ///   Band that must be resized.
    /// </param>
    /// <param name="AMaxWidth">
    ///   Maximum band width.
    /// </param>
    procedure AdjustBandSize(const ABand: TcxGridBand; const AMaxWidth: Integer);
  end;

implementation

end.
