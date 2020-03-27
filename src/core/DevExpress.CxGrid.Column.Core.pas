unit DevExpress.CxGrid.Column.Core;

interface

uses DevExpress.CxGrid.Column.Intf, cxGridDBTableView, Vcl.Forms, Vcl.Controls, DevExpress.Consts;

type
  TDevExpressCxGridColumn = class(TInterfacedObject, IDevExpressCxGridColumn)
  private
    procedure AdjustColumnSize(const AColumn: TcxGridDBColumn; const AMaxWidth: Integer = 0);
  public
    class function New: IDevExpressCxGridColumn;
  end;

implementation

procedure TDevExpressCxGridColumn.AdjustColumnSize(const AColumn: TcxGridDBColumn; const AMaxWidth: Integer = 0);
var
  I, NewWidth: Integer;
begin
  if AColumn.MinWidth = DEFAULT_MIN_WIDTH then
    AColumn.MinWidth := AColumn.Width;
  if AMaxWidth <> 0 then
    NewWidth := AMaxWidth - SCROLL_WIDTH
  else
  begin
    if AColumn.Owner.InheritsFrom(TWinControl) then
      NewWidth := TWinControl(AColumn.Owner).Width - SCROLL_WIDTH
    else
      NewWidth := Application.MainForm.Width - SCROLL_WIDTH;
  end;
  for I := 0 to Pred(AColumn.GridView.ColumnCount) do
    if (AColumn.GridView.Columns[I] <> AColumn) then
      NewWidth := NewWidth - AColumn.GridView.Columns[I].Width;
  AColumn.Width := NewWidth;
end;

class function TDevExpressCxGridColumn.New: IDevExpressCxGridColumn;
begin
  Result := TDevExpressCxGridColumn.Create;
end;

end.
