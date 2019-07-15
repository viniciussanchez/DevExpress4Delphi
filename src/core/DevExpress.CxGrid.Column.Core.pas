unit DevExpress.CxGrid.Column.Core;

interface

uses DevExpress.CxGrid.Column.Intf, cxGridDBTableView;

type
  TDevExpressCxGridColumn = class(TInterfacedObject, IDevExpressCxGridColumn)
  private
    procedure AdjustColumnSize(const AColumn: TcxGridDBColumn; const AMaxWidth: Integer = 0);
  end;

implementation

uses Vcl.Forms, Vcl.Controls;

{ TDevExpressCxGridColumn }

procedure TDevExpressCxGridColumn.AdjustColumnSize(const AColumn: TcxGridDBColumn; const AMaxWidth: Integer = 0);
const
  SCROLL_WIDTH = 35;
var
  I, NewWidth: Integer;
begin
  AColumn.MinWidth := AColumn.Width;
  if AMaxWidth <> 0 then
    NewWidth := AMaxWidth - SCROLL_WIDTH
  else
  begin
    if AColumn.Owner is TWinControl then
      NewWidth := (AColumn.Owner as TWinControl).Width - SCROLL_WIDTH
    else
      NewWidth := Application.MainForm.Width - SCROLL_WIDTH;
  end;
  for I := 0 to Pred(AColumn.GridView.ColumnCount) do
    if (AColumn.GridView.Columns[I].Name <> AColumn.Name) then
      NewWidth := NewWidth - AColumn.GridView.Columns[I].Width;
  AColumn.Width := NewWidth;
end;

end.
