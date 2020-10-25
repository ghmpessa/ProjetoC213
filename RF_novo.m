clc;

mp=0.2;
ts=50;

k = 0.08046/0.09606;
tal = 1/0.09606;

csi=sqrt((((log(mp))/pi)^2)/(1+(((log(mp))/pi)^2)));
wn=4/(csi*ts);

wcg=wn;
MF=2*asind(csi);

G=(k/((tal*wcg)*i+1));

modG=abs(G);
faseG=angle(G)*180/pi;

modC=1/modG;
faseC=-180+MF-faseG;

Kp=sqrt((modC^2)/(1+((tand(faseC)*(-1))^2)));
Ki=(tand(faseC)*(-1)*(wcg)*Kp);
PI=tf([Kp Ki],[1 0])
Kp;
Ki;
Planta=tf([k],[tal 1])

H=feedback(PI*Planta,1)

step(50*H)
