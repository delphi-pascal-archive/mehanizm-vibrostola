unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Chart2: TChart;
    Series2: TLineSeries;
    Series3: TLineSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
