format compact
clear all
clc

%%

% strike=[90 100 110];
bond=0.98;
tau=1;
stock=100;
% 
% % sigma = 0.10
% sigma=0.10;
% sigma
% 
% 
% d=(log(stock./(bond .* strike))+tau*sigma^2/2)/(tau^(1/2)*sigma);
% call=stock * normcdf(d) - bond .* strike .* normcdf(d-tau^(1/2)*sigma)
% put = call+(bond.*strike)-stock;
% 
% disp('----------');
% 
% %sigma = 0.15
% sigma=0.15;
% 
% 
% sigma
% d=(log(stock./(bond .* strike))+tau*sigma^2/2)/(tau^(1/2)*sigma);
% call=stock * normcdf(d) - bond .* strike .* normcdf(d-tau^(1/2)*sigma)
% put = call+(bond.*strike)-stock;

%%

d = @(sigma,strike) (log(stock/(bond * strike))+tau*sigma.^2/2)./(sqrt(tau)*sigma);
call = @(sigma,strike) stock * normcdf(d(sigma,strike)) - bond * strike * normcdf(d(sigma,strike)-sqrt(tau)*sigma);
put = @(sigma,strike) call(sigma,strike)+(bond*strike)-stock;


% call price v sigma
sigma = 0.01:0.01:0.50;

q_call_80 = call(sigma,80);
q_call_90 = call(sigma,90);
q_call_100 = call(sigma,100);
q_call_110 = call(sigma,110);
q_call_120 = call(sigma,120);

q_put_80 = put(sigma,80);
q_put_90 = put(sigma,90);
q_put_100 = put(sigma,100);
q_put_110 = put(sigma,110);
q_put_120 = put(sigma,120);

disp(' ')

subplot(121), plot(sigma,q_put_80,sigma,q_put_90,sigma,q_put_100,sigma,q_put_110,sigma,q_put_120)
axis([0 0.5 0 25])
legend('80','90','100','110','120');
xlabel('Volatility')
ylabel('Put Price')

subplot(122), plot(sigma,q_call_80,sigma,q_call_90,sigma,q_call_100,sigma,q_call_110,sigma,q_call_120)
axis([0 0.5 0 25])
legend('80','90','100','110','120');
xlabel('Volatility')
ylabel('Call Price')

