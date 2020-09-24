i = 0.04; %rentesats
r = 0.1; %nedbetalingsrate
sigma = 0.3; %sparekoeffisient
Tw = 0.01; %tidskonstant workers
Tk = 2; %tidskonstant capitalists
Td = 0; %tidskonstant 

sim_time = 200;

out = sim('richvspoor', sim_time);

figure('rend','painters','pos',[10 10 750 400])
hold on;
plot(out.Ck, "b");
plot(out.Cw, "r");
%plot(out.Loans, "g");
%plot(out.D, "g");
title("Rich vs poor");
xlabel("time [s]");
ylabel("Debt");
grid on;
hold off;
%legend({"Ck","Cw","D"}, "Location", "northeast");
legend({"Ck", "Cw"}, "Location", "northeast");
%legend({"Loans"}, "Location", "northeast");