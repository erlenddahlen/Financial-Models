i = 4; %rentesats
r = 1; %nedbetalingsrate
sigma = 0.5; %sparekoeffisient
Tw = 5; %tidskonstant workers
Tk = 20; %tidskonstant capitalists
Td = 10; %tidskonstant 

sim_time = 250;

out = sim('richvspoor', 200:sim_time);

figure('rend','painters','pos',[10 10 750 400])
hold on;
plot(out.Ck, "b");
plot(out.Cw, "r");
plot(out.D, "g");
title("Rich vs poor");
xlabel("time [s]");
ylabel("Debt");
grid on;
hold off;
legend({"Ck","Cw","D"}, "Location", "northeast");
%legend({"D"}, "Location", "northeast");