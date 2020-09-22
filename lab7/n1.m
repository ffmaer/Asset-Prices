format compact
clear all
clc
%%

three = csvread('three.csv',:,1);
mean = mean(three)
std = std(three)


k_max = 10;
ac = zeros(k_max,1);
for k=1:k_max
    ac(k) = auto_corr_fun(three,k);
end
k = 1:k_max;
phi = 0.9815;
ar_ac = phi.^k;
subplot(1,2,1),plot(k,ac,k,ar_ac);
set(gca,'FontSize',14)
title('three months');
xlabel('k-lag')
ylabel('auto corr')
legend('data','AR')


%%

ten = csvread('ten.csv',:,1);
k_max = 20;
ac = zeros(k_max,1);
for k=1:k_max
    ac(k) = auto_corr_fun(ten,k);
end
k = 1:k_max;
phi = 0.975;
ar_ac = phi.^k;
subplot(1,2,2),plot(k,ac,k,ar_ac);
set(gca,'FontSize',14)
title('ten years');
xlabel('k-lag');
ylabel('auto corr');
legend('data','AR')



%%