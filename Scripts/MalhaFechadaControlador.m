clc;

degrau = degrau0_4;
resp = resp0_4;

Kp = 8;
Ki = 0.5;
Kd = 1;
Ts = 0.4;
SP = 50;
PV = 0;
resp_5 = 0;
AcaoIntegral = 0;
ErroAnterior = SP - PV;
for i = 0.4:0.4:346.8
  Erro = SP - PV;
  AcaoProporcional = Kp*Erro;
  AcaoIntegral = AcaoIntegral + Ki*Ts*Erro;
  AcaoDerivativa = ((Erro - ErroAnterior)/Ts)*Kd;
  ErroAnterior = Erro;
  AcaoControlador = AcaoProporcional + AcaoIntegral + AcaoDerivativa;
  PV = a1*PV +b1*AcaoControlador;
  resp_5 = [resp_5 PV];  
end

figure(5)
plot(tempo0_4,resp_5)