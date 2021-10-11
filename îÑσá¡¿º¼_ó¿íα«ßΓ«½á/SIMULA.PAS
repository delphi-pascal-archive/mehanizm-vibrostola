unit simula;
interface

  type
   proctype=procedure(t:double; var y,yp: array of double);

  procedure runge(f:proctype; neon:integer; var y:array of double; var t:double;
                   tout:double;
                   h:double);
   procedure gira(n:integer; var x:double; x9,h:double;
               fun:proctype; var y:array of double);

   procedure r_k_m (n:integer; var x:double; var y:array of double;
                    var h:double; eps:double; fun:proctype);

   procedure _rkm_(n:integer; var x:double; var y:array of double;
                    var h:double; eps:double; fun:proctype);

   procedure rkf45(f:proctype; neon:integer; var y:array of double; var t:double;
                   tout:double; var relerr:double;
                   abserr:double;
                   var iflag:integer; var w:array of double; var iwork:array of integer);

   procedure testrkf45(i:integer; var tout,err2,err1:double; const aa:array of double);

   procedure RK4(fun:proctype; n:integer; x,h:double; var y:array of double);

   procedure adams(n:integer; var x:double; x9,h:double;
               fun:proctype; var y:array of double);

var  epsilon:double=0;
     u26:double=0;
     
   implementation

   uses forms,dialogs,sysutils,math;

   procedure r_k_m (n:integer; var x:double; var y:array of double;
                    var h:double; eps:double; fun:proctype);
           {М•вЃ§ Рг≠£•-Кгвв†-М•pбЃ≠†}
           label m1;
           var
              w:array of array of double;
              h3,e2:double;
              d1,j:integer;
           begin
           setlength(w,7,n);
                       fun(x,y,w[6,0]);
               for j:=0 to n-1 do  w[0,j]:=y[j];
         m1: d1:=0;
            for j:=0 to n-1 do
           begin
               w[1,j]:=w[6,j]*h;
               y[j]:=w[0,j]+w[1,j]/3;
            end;
          h3:=h/3;
          fun(x+h3,y,w[5,0]);
       for j:=0 to n-1 do
           y[j]:=w[0,j]+(w[1,j]+w[5,j]*h)/6;
         fun(x+h3,y,w[5,0]);
         for j:=0 to n-1 do
            begin w[2,j]:=w[5,j]*h;
                  y[j]:=w[0,j]+w[1,j]/8+0.375*w[2,j];
             end;
            fun(x+h/2,y,w[5,0]);
            for j:=0 to n-1 do
                begin w[3,j]:=w[5,j]*h;
                   y[j]:=w[0,j]+w[1,j]/2-1.5*w[2,j]+2*w[3,j]
                   end;
               fun(x+h,y,w[5,0]);
             for j:=0 to n-1 do
               begin w[4,j]:=w[5,j]*h;
                 y[j]:=w[0,j]+(w[2,j]+4*w[3,j]+w[4,j])/6;
                 e2:=abs(-2*w[1,j]+9*w[2,j]-8*w[3,j]+w[4,j])/30;
                 if e2>eps then begin h:=h/2; goto m1; end;
                 if e2<eps/20 then d1:=d1+1;
               end;
               x:=x+h;
               if e2 < eps/20 then  h:=2*h;
           setlength(w,0,0);
     end;

   procedure _rkm_(n:integer;var x:double; var y:array of double;
                    var h:double; eps:double; fun:proctype);
           {М•вЃ§ Рг≠£•-Кгвв†-М•pбЃ≠†}
           var
              z,k1,k3,f,f0:array of double;
              a,r,h3,h4:double;
              j:integer;
           begin
           setlength(z,n);
           setlength(k1,n);
           setlength(k3,n);
           setlength(f,n);
           setlength(f0,n);
                fun(x,y,f0);
               for j:=0 to n-1 do  z[j]:=y[j];
         repeat
            h3:=h/3; h4:=4*h3;
            for j:=0 to n-1 do
           begin
               k1[j]:=f0[j]*h3;
               y[j]:=z[j]+k1[j];
            end;
          fun(x+h3,y,f);
       for j:=0 to n-1 do
           y[j]:=z[j]+(k1[j]+f[j]*h3)/2;
         fun(x+h3,y,f);
         for j:=0 to n-1 do
            begin k3[j]:=f[j]*h;
                  y[j]:=z[j]+0.375*(k1[j]+k3[j]);
             end;
            fun(x+h/2,y,f);
            for j:=0 to n-1 do
                begin k1[j]:=k1[j]+f[j]*h4;
                   y[j]:=z[j]+1.5*(k1[j]-k3[j]);
                   end;
               fun(x+h,y,f);
               r:=0;
             for j:=0 to n-1 do
               begin a:=f[j]*h3;
                 y[j]:=z[j]+(k1[j]+a)/2;
                 a:=2*k1[j]-3*k3[j]-a;
                 if y[j]<>0 then a:=a/y[j];
                 if abs(a)>r then r:=abs(a);
               end;
               if (r<=eps) and (32*r>eps) then begin x:=x+h; break end;
               if r>eps then h:=h/2 else h:=2*h;
               until false;
           setlength(z,0);
           setlength(k1,0);
           setlength(k3,0);
           setlength(f,0);
           setlength(f0,0);
     end;

procedure testrkf45(i:integer; var tout,err2,err1:double; const aa:array of double);
begin
      case i of
       1: begin showmessage('Ќепpавильный вызов'); application.terminate; end;
       2: tout:=tout+aa[0];
       3: showmessage('—лишком высока€ тpебуема€ точность:'#13#10'RELERR='+floattostr(err1)+'  Abserr='+floattostr(err2));
       4: showmessage('—лишком много шагов');
       5: begin
           err2:=aa[1];//1e-9;
          showmessage('—лишком высока€ тpебуема€ точность:'#13#10'RELERR='+floattostr(err1)+'  Abserr='+floattostr(err2));
         end;
       6: begin
           err1:=aa[2]*err1; //10
          showmessage('—лишком высока€ тpебуема€ точность:'#13#10'RELERR='+floattostr(err1)+'  Abserr='+floattostr(err2));
         end;
     end;
end;

   procedure rkf45(f:proctype; neon:integer; var y:array of double; var t:double;
                   tout:double; var relerr:double;
                   abserr:double;
                   var iflag:integer; var w:array of double; var iwork:array of integer);
      var
       k1,k2,k3,k4,k5,k6,klm:integer;
      procedure rkfs(f:proctype; neon:integer; var y:array of double; var t:double;
                   tout,relerr,abserr:double;
                   var iflag:integer;
                  var yp:array of double; var h:double; var f1,f2,f3,f4,f5:array of double;
                  var savere,saveae:double; var nfe,kop:integer;
                  var init,jflag,kflag:integer);

         const
          remin=1e-12;
          maxnfe=10000;
         var
          a,ae,dt,ee,eeoet,esttol,et,hmin,rer,
          s,scale,tol,toln,ypk:double;
          k,mflag:integer;
          hfaild,output:boolean;
         label
          10,40,45,50,60,65,80,100,200;
      procedure fehl(f:proctype; neon:integer; var y:array of double; var t:double;
                  h:double;
                  var yp,f1,f2,f3,f4,f5,s:array of double);
          var
           ch:double;
           k:integer;
        begin
         ch:=h/4;
         for k:=0 to neon-1 do
          f5[k]:=y[k]+ch*yp[k];
          f(t+ch,f5,f1);
          ch:=3*h/32;
         for k:=0 to neon-1 do
          f5[k]:=y[k]+ch*(yp[k]+3*f1[k]);
          f(t+3*h/8,f5,f2);
           ch:=h/2197;
         for k:=0 to neon-1 do
          f5[k]:=y[k]+ch*(1932*yp[k]+(7296*f2[k]-7200*f1[k]));
          f(t+12*h/13,f5,f3);
           ch:=h/4104;
         for k:=0 to neon-1 do
          f5[k]:=y[k]+ch*((8341*yp[k]-845*f3[k])+(29440*f2[k]-32832*f1[k]));
          f(t+h,f5,f4);
          ch:=h/20520;
         for k:=0 to neon-1 do
          f1[k]:=y[k]+ch*((-6080*yp[k]+(9295*f3[k]-5643*f4[k]))+(41040*f1[k]-28352*f2[k]));
          f(t+h/2,f1,f5);
          ch:=h/7618050;
         for k:=0 to neon-1 do
          s[k]:=y[k]+ch*((902880*yp[k]+(3855735*f3[k]-1371249*f4[k]))+(3953664*f2[k]+277020*f5[k]));
       end;
    begin
     mflag:=abs(iflag);
     if (neon<1) or (relerr<0) or (abserr<0) or (mflag=0) or (mflag>8) then
       begin
    10: iflag:=8;
        exit
       end;
       if mflag<>1 then
    //   begin
    //   u26:=1;
    //   while u26+1<>1 do u26:=u26/2;
    //   u26:=26*u26;
    //   end
     //  else
         begin
         if (t=tout) and (kflag<>3) then goto 10;
         if mflag=2 then
          begin
           if (kflag=3) and (init=0) then goto 45;
           if kflag=4 then goto 40;
           if (kflag=5) and (abserr=0) or (kflag=6) and
              (relerr<=savere) and (abserr<=saveae) then application.terminate;
           goto 50
          end
          else
           begin
            if (iflag=3) or (iflag=5) and (abserr>0) then goto 45;
            if iflag=4 then goto 40;
            application.terminate;
           end;
        40: nfe:=0;
            if mflag=2 then goto 50;
        45: iflag:=jflag;
            if kflag=3 then mflag:=abs(iflag)
          end;
        50: jflag:=iflag;
            kflag:=0;
            savere:=relerr;
            saveae:=abserr;
            rer:=2*epsilon+remin;
            if relerr<rer then
             begin
              relerr:=rer;
              iflag:=3;
              kflag:=3;
              exit
             end;
             dt:=tout-t;
             if mflag=1 then goto 60;
             if init=0 then goto 65;
             goto 80;
         60: init:=0;
             kop:=0;
             a:=t;
             f(a,y,yp);
             nfe:=1;
             if t=tout then
              begin
               iflag:=2; exit
              end;
          65: init:=1;
              h:=abs(dt);
              toln:=0;
              for k:=0 to neon-1 do
               begin
                tol:=relerr*abs(y[k])+abserr;
                if tol<>0 then
                 begin
                  toln:=tol;
                  ypk:=abs(y[k]);
                  if ypk*h*h*h*h*h>tol then
                   h:=exp(0.2*ln(tol/ypk))
                end
               end;
             if toln<=0 then h:=0;
             h:=MaxValue([h,u26*MaxValue([abs(t),abs(dt)])]);
             if iflag<0 then jflag:=-2 else jflag:=2;
         80: if dt>0 then h:=abs(h) else h:=-abs(h);
             if abs(h)>=2*abs(dt) then inc(kop);
             if kop>=100 then
              begin
               kop:=0;
               iflag:=7;
               exit
              end;
              if abs(dt)<=u26*abs(t) then
               begin
                for k:=0 to neon-1 do y[k]:=y[k]+dt*yp[k];
                a:=tout;
                f(a,y,yp);
                inc(nfe); t:=tout; iflag:=2;
                exit
               end;
             output:=false;
             scale:=2/relerr;
             ae:=scale*abserr;
        100: hfaild:=false;
             hmin:=u26*abs(t);
             dt:=tout-t;
             if abs(dt)<abs(h) then
              begin
               h:=dt; output:=true
              end
             else
              if abs(dt)<2*abs(h) then h:=dt/2;
         200: if nfe>maxnfe then
               begin
                iflag:=4; kflag:=4; exit
               end;
               fehl(f,neon,y,t,h,yp,f1,f2,f3,f4,f5,f1);
               nfe:=nfe+5;
               eeoet:=0;
               for k:=0 to neon-1 do
                begin
                 et:=abs(y[k])+abs(f1[k])+ae;
                 if et<=0 then
                  begin
                   iflag:=5; exit
                  end;
                 ee:=abs((-2090*yp[k]+(21970*f3[k]-15048*f4[k]))+
                     (22528*f2[k]-27360*f5[k]));
                 eeoet:=MaxValue([eeoet,ee/et])
                end;
               esttol:=abs(h)*eeoet*scale/52440;
               if esttol>1 then
                begin
                 hfaild:=true;
                 output:=false;
                 if esttol<52049 then s:=0.9/exp(0.2*ln(esttol))
                                 else s:=0.1;
                                 h:=s*h;
                 if abs(h)>hmin then goto 200
                             else
                              begin
                               iflag:=6; kflag:=6; exit
                              end
                 end;
                 t:=t+h;
                 for k:=0 to neon-1 do y[k]:=f1[k];
                 a:=t;
                 f(a,y,yp);
                 inc(nfe);
                 if esttol>1.889568e-4 then
                   s:=0.9/exp(0.2*ln(esttol))
                   else s:=5;
                 if hfaild then if s>1 then s:=1;
                 s:=MaxValue([s*abs(h),hmin]);
                 if h<0 then h:=-s else h:=s;
                 if not output then
                  if iflag>0 then goto 100
                   else iflag:=-2
                   else iflag:=2
            end;
           begin
            klm:=neon;
            k1:=klm+1;
            k2:=k1+neon;
            k3:=k2+neon;
            k4:=k3+neon;
            k5:=k4+neon;
            k6:=k5+neon;
            rkfs(f,neon,y,t,tout,relerr,abserr,iflag,w[0],
               w[klm],w[k1],w[k2],w[k3],w[k4],w[k5],w[k6],w[k6+1],
               iwork[0],iwork[1],iwork[2],iwork[3],iwork[4])
           end;
           {--------------------------}

   procedure runge(f:proctype; neon:integer; var y:array of double; var t:double;
                   tout:double;
                   h:double);
      var
       w:array of array of double;
       k:integer;
       dt,eps:double;
     begin
      if (neon<=0) or (h=0) then halt;
setlength(w,3,neon);
        eps:=20*epsilon;
       repeat
        f(t+0,y,w[0,0]);
        dt:=tout-t;
        if abs(dt)<=abs(t)*eps then
         begin
          for k:=0 to neon-1 do y[k]:=y[k]+dt*w[0,k];
          t:=tout;
          exit
         end;
        if abs(dt)<abs(h) then h:=dt;
        if dt<0 then h:=-abs(h) else h:=abs(h);
        for k:=0 to neon-1 do w[1,k]:=y[k]+h*w[0,k]/2;
        f(t+h/2,w[1,0],w[2,0]);
        for k:=0 to neon-1 do
         begin
          w[0,k]:=w[0,k]+2*w[2,k];
          w[1,k]:=y[k]+h*w[2,k]/2
         end;
         f(t+h/2,w[1,0],w[2,0]);
        for k:=0 to neon-1 do
         begin
          w[0,k]:=w[0,k]+2*w[2,k];
          w[1,k]:=y[k]+h*w[2,k]
         end;
         f(t+h,w[1,0],w[2,0]);
         for k:=0 to neon-1 do
          y[k]:=y[k]+h*(w[0,k]+w[2,k])/6;
         t:=t+h
         until t=tout;
setlength(w,0,0);
       end;

procedure RK4(fun:proctype; n:integer; x,h:double; var y:array of double);
var i,j:integer;
    h1,h2,q:double;
    y0,y1,f:array of double;
begin
setlength(y0,n);
setlength(y1,n);
setlength(f,n);
h1:=0;
h2:=h/2;
for i:=0 to n-1 do
begin
 y0[i]:=y[i];
 y1[i]:=y[i];
end;
for j:=1 to 4 do
begin
 fun(x+h1,y,f);
 if j=3 then h1:=h else h1:=h2;
 for i:=0 to n-1 do
 begin
  q:=h1*f[i];
  y[i]:=y0[i]+q;
  if j=2 then q:=2*q;
  y1[i]:=y1[i]+q/3;
 end;
end;
for i:=0 to n-1 do
 y[i]:=y1[i];
setlength(y0,0);
setlength(y1,0);
setlength(f,0);
end;

procedure gira(n:integer; var x:double; x9,h:double;
               fun:proctype; var y:array of double);
        {М•вЃ§ Г®p† }
 var i,k: integer;
    h4:double;
    d:array of array of double;
begin
setlength(d,5,n);
 h4:=4*h;
 for k:=0 to 2 do
   begin
    for i:=0 to n-1 do d[k, i]:=y[i];
 //   runge(fun,n,y,x,x+h,h);
    RK4(fun,n,x,h,y);
    x:=x+h;
   end;
   repeat
    fun(x,y,d[4,0]);
    for i:=0 to n-1 do
   begin
     d[3,i]:= y[i];
     y[i]:= (d[0,i]-10*y[i])/3-2*d[1,i]+6*d[2,i]+h4*d[4,i];
   end;
   x:=x+h; fun(x,y,d[4,0]);
   for i:=0 to n-1 do
    begin
     y[i]:=(48*d[3,i]-36*d[2,i]+16*d[1,i]-3*(d[0,i]-h4*d[4,i]))/25;
     d[0,i]:=d[1,i];
     d[1,i]:=d[2,i];
     d[2,i]:=d[3,i];
    end;
   until (x>=x9)=(h>0.0);
setlength(d,0,0);
 end;

procedure adams(n:integer; var x:double; x9,h:double;
               fun:proctype; var y:array of double);
var i,k:integer;
h4:double;
y1,f,f1:array of double;
d:array of array of double;
begin
setlength(y1,n);
setlength(f,n);
setlength(f1,n);
setlength(d,2,n);
h4:=h/24;
fun(x,y,f1);
for k:=0 to 2 do
begin
 RK4(fun,n,x,h,y);
 x:=x+h;
 if k<>2 then
 begin
  fun(x,y,f);
  for i:=0 to n-1 do d[k,i]:=f[i];
 end;
end;
repeat
 fun(x,y,f);
 for i:=0 to n-1 do
  y1[i]:=y[i]+h4*(55*f[i]-59*d[1,i]+37*d[0,i]-9*f1[i]);
 x:=x+h;
 fun(x,y1,f1);
 for i:=0 to n-1 do
 begin
  y[i]:=y[i]+h4*(9*f1[i]+19*f[i]-5*d[1,i]+d[0,i]);
  f1[i]:=d[0,i];
  d[0,i]:=d[1,i];
  d[1,i]:=f[i];
 end;
until (x>=x9)=(h>0.0);
setlength(y1,0);
setlength(f,0);
setlength(f1,0);
setlength(d,0,0);
end;

begin
  epsilon:=1;
  while 1+epsilon<>1 do epsilon:=epsilon/2;
  u26:=26*epsilon;
  end.