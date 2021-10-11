unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, TeEngine, Series, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    Label17: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    CheckBox1: TCheckBox;
    StaticText1: TStaticText;
    Label18: TLabel;
    Label19: TLabel;
    StaticText2: TStaticText;
    Label20: TLabel;
    StaticText3: TStaticText;
    Label21: TLabel;
    Edit9: TEdit;
    Label22: TLabel;
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    Chart4: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Button9: TButton;
    Chart5: TChart;
    Series13: TLineSeries;
    Series14: TLineSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses math,mexanic, Unit2, Unit3,simula, Unit4;

const dM=0.05;

var mex2:TMexanic;

    b,e,l1,l2,l3,a1,a2,lambda,fi,fi1,fi2:double;
    xmax,mas,x,y,nu1,nu2:double;
    flag:boolean;
    X_max:integer;
    dfi1,dfi2,dx,dy,ddfi1,ddfi2,ddx,ddy:double;
    mc,Jd,Jn,dJn,Mn:double;
    f,df:array[1..4] of double;
    Mf:array[1..4] of double;

procedure kin22;
var s,c,p,s1,c2,s2,f2:double;
begin
 s:=sin(fi); c:=cos(fi); p:=sqrt(l1*l1-sqr(e*c));
 fi1:=arccos(-e*c/l1);
 fi2:=arcsin(p/l2);
 y:=e*s+p;
 x:=e*c+sqrt(l2*l2-p*p);

 s1:=sin(fi1); s2:=sin(fi2); c2:=cos(fi2);
 dfi1:=-e*s/l1/s1;
 dy:=e*c*(1-dfi1);
 dfi2:=-e*c*dfi1/l2/c2;
 dx:=-e*s-l2*s2*dfi2;

 f2:=dfi2*dfi2;
 ddfi1:=-e*c/l1/s1-f2*cot(fi1);
 ddy:=-e*(s*(1-dfi1)+c*ddfi1);
 ddfi2:=(ddy+e*s)/l2/c2+tan(fi2)*f2;
 ddx:=-e*c-l2*c2*f2-l2*s2*ddfi2;

 Jn:=Jd+mc*(dx*dx+dy*dy);
 dJn:=2*mc*(dx*ddx+dy*ddy);
end;

procedure sdf(t:double; var y,yp: array of double);
begin
fi:=y[0];
kin22;
yp[0]:=y[1];
yp[1]:=(Mn-dJn*y[1]*y[1]/2)/Jn;
end;

procedure imageclear;
begin
with form1.Image1 do
begin
canvas.Brush.Color:=clwhite;
canvas.FillRect(rect(0,0,width,height));
end;
end;
    
procedure rismex;
var PA,PB,PD,PC:TPoint;
begin
 mex2.napr(0,0,pi/2,round(e*masx)+10,350,50,false);
 P_B:=Point2_(e,fi);
 PB:=P2_Point(P_B);
 PA.X:=x000;
 PA.Y:=y000;
 mex2.rism1u(PA,PB);
 p_D:=Point2(0,y);
 PD:=P2_Point(P_D);
 P_C:=Point2(x,y);
 PC:=P2_Point(P_C);
 mex2.line(point(PC.X+50,PC.Y),point(PC.X-X_max-50,PC.Y));
 mex2.line(point(PC.X+50,PC.Y-1),point(PC.X-X_Max-50,PC.Y-1));
 mex2.line(point(PC.X+50,PC.Y+1),point(PC.X-X_Max-50,PC.Y+1));
 mex2.GrPWP(PD,0,pi/2);
 mex2.HedelWW(PB,PD);
 mex2.HedelWW(PB,PC);
 mex2.Arc(PC,8,0,pi);
end;

procedure zasdat;
begin
with form1 do
begin
a2:=strtofloat(edit2.Text);
a1:=strtofloat(edit1.Text);
if a1>=a2 then
begin
a2:=a1;
edit2.Text:=edit1.Text;
end;
lambda:=a1/a2;
edit4.Text:=format('%0.2f',[lambda]);
b:=strtofloat(edit3.Text);;
l1:=b;
e:=a1/2;
if a1=a2 then
l2:=l1*l1/e
else
l2:=a2/2*sqrt(1+4*b*b/(a2*a2-4*e*e));
if a1=a2 then
l3:=sqrt(e*e+l2*l2-l1*l1)-e
else
l3:=lambda*l2-a2/2;
edit6.Text:=format('%0.1f',[e]);
edit5.Text:=format('%0.1f',[l1]);
edit7.Text:=format('%0.1f',[l2]);
edit8.Text:=format('%0.1f',[l3]);
edit9.Text:=format('%0.1f',[arcsin(a1/2/b)*180/pi]);
xmax:=e+sqrt(l2*l2-l1*l1+e*e);
X_Max:=round(xmax*mas);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
decimalseparator:='.';
flag:=false;
mex2:=Tmexanic.Create;
mas:=1.5;
statictext3.Caption:=format('%0.3f',[mas]);
mex2.masxy(mas);
mex2.SetCanvas(image1.Canvas);
X000:=round(image1.Width/3);
y000:=round(3*image1.Height/4);
statictext1.Caption:=inttostr(X000);
statictext2.Caption:=inttostr(Y000);
mex2.sistcoord(x000,y000,0,400,400,clred);
zasdat;
fi:=-0.6;
y:=e*sin(fi)+sqrt(l1*l1-sqr(e*cos(fi)));
x:=e*cos(fi)+sqrt(l2*l2-l1*l1+sqr(e*cos(fi)));
image1.Canvas.Pen.Color:=clblack;
rismex;

mc:=50;
Jd:=1;
Mn:=50;
Mf[1]:=0;
Mf[2]:=0;
end;


procedure TForm1.Button1Click(Sender: TObject);
const n=24; ob=30;
var i,nxob:integer;
begin
y:=e*sin(fi)+sqrt(l1*l1-sqr(e*cos(fi)));
x:=e*cos(fi)+sqrt(l2*l2-l1*l1+sqr(e*cos(fi)));
image1.Canvas.Pen.Color:=clwhite;
rismex;
nxob:=n*ob;
flag:=false;
for i:=0 to nxob do
begin
fi:=15*i*pi/180;
//fi:=-0.6;
//y:=e*sin(fi)+sqrt(l1*l1-sqr(e*cos(fi)));
//x:=e*cos(fi)+sqrt(l2*l2-l1*l1+sqr(e*cos(fi)));
kin22;

if i<=n then
begin
if i=0 then
begin
 series1.Clear;
 series2.Clear;
 series3.Clear;
 series4.Clear;
 series5.Clear;
 series6.Clear;
 series7.Clear;
 series8.Clear;
 series9.Clear;
 series10.Clear;
 series11.Clear;
 series12.Clear;
end;
 series1.AddXY(fi,fi1);
 series2.AddXY(fi,dfi1);
 series3.AddXY(fi,ddfi1);
 series4.AddXY(fi,fi2);
 series5.AddXY(fi,dfi2);
 series6.AddXY(fi,ddfi2);
 series7.AddXY(fi,x);
 series8.AddXY(fi,dx);
 series9.AddXY(fi,ddx);
 series10.AddXY(fi,y);
 series11.AddXY(fi,dy);
 series12.AddXY(fi,ddy);
end;

with form3 do
if i<=n then
begin
if i=0 then
begin
 series1.Clear;
 series2.Clear;
 series3.Clear;
end;
 series1.AddXY(x,y);
 series2.AddXY(fi,x);
 series3.AddXY(fi,y);
end;

with form4 do
if i<=n then
begin
if i=0 then
begin
 series1.Clear;
 series2.Clear;
end;
 series1.AddXY(fi,Jn);
 series2.AddXY(fi,dJn);
end;

with form2 do
if i<=n then
begin
if i=0 then
begin
 series1.Clear;
 series2.Clear;
end;
 nu1:=arccos((y*y+l1*l1-e*e)/2/y/l1);
 nu2:=arccos((x*x+l2*l2-l1*l1)/2/x/l2);
 series1.AddXY(fi,nu1);
 series2.AddXY(fi,nu2);
end;
image1.Canvas.Pen.Color:=clblack;
rismex;
delay_wait(trackbar1.Position);
if flag or (i=nxob) then break;
if checkbox1.Checked then
image1.Canvas.Pen.Color:=clbtnface
else
image1.Canvas.Pen.Color:=clwhite;
rismex;
//exit;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
flag:=true;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
label1.Caption:='1/'+inttostr(trackbar1.Position);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 form2.show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
flag:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case key of
 '0'..'9','.',#8:exit;
 else key:=#0;
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
imageclear;
mex2.sistcoord(x000,y000,0,400,400,clred);
zasdat;
fi:=-0.6;
y:=e*sin(fi)+sqrt(l1*l1-sqr(e*cos(fi)));
x:=e*cos(fi)+sqrt(l2*l2-l1*l1+sqr(e*cos(fi)));
image1.Canvas.Pen.Color:=clblack;
rismex;
button6.Enabled:=false;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
button6.Enabled:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
imageclear;
mex2.sistcoord(x000,y000,0,400,400,clred);
image1.Canvas.Pen.Color:=clblack;
mas:=mas+dM;
statictext3.Caption:=format('%0.3f',[mas]);
mex2.masxy(mas);
X_Max:=round(xmax*mas);
rismex;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
imageclear;
mex2.sistcoord(x000,y000,0,400,400,clred);
image1.Canvas.Pen.Color:=clblack;
mas:=mas-dM;
statictext3.Caption:=format('%0.3f',[mas]);
mex2.masxy(mas);
X_Max:=round(xmax*mas);
rismex;
end;

var xold,yold:integer;
    fdown:boolean=false;
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 xold:=X;
 yold:=Y;
 fdown:=true;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
fdown:=false;
X000:=X000+X-xold;
Y000:=Y000+Y-yold;
statictext1.Caption:=inttostr(X000);
statictext2.Caption:=inttostr(Y000);
imageclear;
mex2.sistcoord(x000,y000,0,400,400,clred);
rismex;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if not fdown then exit;
statictext1.Caption:=inttostr(X000+X-xold);
statictext2.Caption:=inttostr(Y000+Y-yold);
end;

procedure TForm1.Button9Click(Sender: TObject);
const max=230;  metod=1;
var t,h,hi,t1,t2,r:double;
    i:integer;
    w:array[1..50] of double;
    iw:array[1..50] of integer;
    it:integer;
    err1,err2:double;

begin
form4.Show;
series13.Clear;
series14.Clear;
//Динамика
t:=0;
h:=10;
hi:=h/2;
f[1]:=Mf[1];
f[2]:=Mf[2];

for i:=1 to max do
begin
t1:=t;
t:=t+h;
t2:=t;

case metod of
1:runge(sdf,2,f,t1,t2,hi);
2:r_k_m(2,t,f,h,0.000001,sdf);
3:_rkm_(2,t,f,h,0.000001,sdf);
4:gira(2,t1,t2,hi/100,sdf,f);
5:
begin
it:=1;
rkf45(sdf,4,f,t1,t2,err1,err2,it,w,iw);
testrkf45(it,r,err2,err1,[0.0,1.0e-9,10.0]);
end;
6:adams(4,t1,t2,hi/100,sdf,f);
end;
series13.AddXY(t,f[2]);
series14.AddXY(t,f[1]);
end;//i

end;

end.
