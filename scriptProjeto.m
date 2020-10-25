clc;

degrau = degrau0_4;
resp = resp0_4;

[L, C] = size(resp); %Dimensões do vetor resp - [L, C] - L linhas e C colunas
if (L > 1) %Número de linhas do vetor coluna
  F = [resp(1:L-1,1) degrau(1:L-1,1)];
  J = [resp(2:L,1)];
elseif (C > 1) %Número de colunas do vetor linha
  F = [resp(1,1:C-1); degrau(1,1:C-1)]';
  J = [resp(1,2:C)]';
end

Theta = inv(F'*F)*F'*J; %Cálculo matricial

a1 = Theta(1)
b1 = Theta(2)
clear L
clear C
clear F
clear J
clear Theta

mp=input('Entre com o valor do máxim pico: ')
ts=input('Entre com o valor do tempo de acomodação: ')

k=b1;
tal=(1/a1);

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

Planta=tf([k],[tal 1])

H=feedback(PI*Planta,1)

#Kp = 0.738;
#Ki = 94.2;
Kd = 0;
Ts = 0.4;
SP = 50;
PV = 0;
resp = 0;
AcaoIntegral = 0;
ErroAnterior = SP - PV;;

for i = 0.4:0.4:100
   Erro = SP - PV;
   AcaoProporcional = Kp * Erro;
   AcaoIntegral = AcaoIntegral + Ki * Ts * Erro;
   AcaoDerivativa = ((Erro - ErroAnterior)/Ts)*Kd;
   AcaoControlador = AcaoProporcional + AcaoIntegral + AcaoDerivativa;
   PV = a1 * PV + b1 * AcaoControlador;
   resp =  [resp PV];
   ErroAnterior = Erro;
end

plot(resp);