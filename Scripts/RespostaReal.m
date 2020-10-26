clc;

sysZ = tf(b1,[1 -a1],0.4) %Tempo de amostragem de 0.4 segundos
sysS = d2c(sysZ)

resp_ident = 50*step(sysS, tempo0_4);

figure(1)
plot(tempo0_4, resp0_4, 'b', tempo0_4, resp_ident, 'g');

MalhaAberta;