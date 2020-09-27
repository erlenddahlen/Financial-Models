% Konstanter

i = 0.05; %rentesats
r = 0.1; %nedbetalingsrate
sigma = 1; %sparekoeffisient
Tw = 0.1; %tidskonstant workers
Tk = 2; %tidskonstant capitalists
Td = 0; %tidskonstant nye utlån

sim_time = 200;

out = sim('richvspoor', sim_time);

figure('rend','painters','pos',[10 10 750 400])
hold on;
plot(out.Ck, "b");
plot(out.Cw, "r");
plot(out.D, "g");
title("Rich vs poor");
xlabel("time [y]");
ylabel("Amount");
grid on;
hold off;
legend({"Ck","Cw","D"}, "Location", "northeast");
%legend({"Ck", "Cw"}, "Location", "northeast");