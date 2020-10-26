#Malha fechada sem ganho proporcional
clc;

SP_MF = 50;
PV_MF = 0;
resp_mfsg = 0;
Erro = 0;
for j = 0.4:0.4:346.8
  Erro = SP_MF - PV_MF;
  PV_MF = a1*PV_MF + b1*Erro;
  resp_mfsg = [resp_mfsg PV_MF];
end

figure(3)
plot(tempo0_4, resp_mfsg);

RF_novo