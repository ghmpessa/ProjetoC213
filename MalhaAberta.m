#Malha aberta
SP = 50;
PV = 0;
resp_ma = 0;
for i = 0.4:0.4:346.8
  PV = 0.99044*PV + 0.0080070*SP;
  resp_ma = [resp_ma PV];
end

plot(tempo0_4, resp_ma);