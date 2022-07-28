unit DevExpress.CxGrid.Band.Core;

interface

uses DevExpress.CxGrid.Band.Intf, cxGridBandedTableView, DevExpress.Consts, Vcl.Forms, Vcl.Controls, System.Classes;

type
  TDevExpressCxGridBand = class(TInterfacedObject, IDevExpressCxGridBand)
  private
    procedure AdjustBandSize(const ABand: TcxGridBand; const AMaxWidth: Integer = 0);
  public
    class function New: IDevExpressCxGridBand;
  end;

implementation

procedure TDevExpressCxGridBand.AdjustBandSize(const ABand: TcxGridBand; const AMaxWidth: Integer = 0);
var
  I, NewWidth: Integer;
begin
  if AMaxWidth <> 0 then
    NewWidth := AMaxWidth - SCROLL_WIDTH
  else
  begin
    if ABand.GridView.Owner.InheritsFrom(TWinControl) then
      NewWidth := TWinControl(ABand.GridView.Owner).Width - SCROLL_WIDTH
    else
      NewWidth := Application.MainForm.Width - SCROLL_WIDTH;
  end;
  for I := 0 to Pred(ABand.GridView.Bands.Count) do
    if (ABand.GridView.Bands.Items[I] <> ABand) then
      NewWidth := NewWidth - ABand.GridView.Bands.Items[I].Width;
  ABand.Width := NewWidth;
end;

class function TDevExpressCxGridBand.New: IDevExpressCxGridBand;
begin
  Result := TDevExpressCxGridBand.Create;
end;

end.
