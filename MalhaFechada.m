#Malha fechada sem ganho proporcional
SP = 50;
PV = 0;
resp_mfsg = 0;
Erro = 0;
for i = 0.4:0.4:346.8
  Erro = SP - PV;
  PV = a1*PV + b1*Erro;
  resp_mfsg = [resp_mfsg PV];
end

plot(tempo0_4, resp_mfsg);