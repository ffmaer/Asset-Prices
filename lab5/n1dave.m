%  hw5_s12.m 
%  Matlab program for Lab Report #5, Spring 2012 
%  NYU course ECON-UB 233, Macro foundations for asset pricing, Mar 2012.  
%  Written by:  Dave Backus, March 2012 
format compact
format short 
clear all
clc

%%
disp('Answers to Lab Report 5') 

disp(' ')
disp('------------------------------------------------------------------')
disp('Question 1 (option prices)') 

disp(' ')
disp('Inputs') 
tau = 1
q_tau = 0.98; 
q = 100.00 
b = [90; 100; 110];

% BSM formula
% define price as function of sigma, two steps for clarity (or not?) 
d = @(sigma,b) (log(q./(q_tau.*b))+tau*sigma.^2/2)./(sqrt(tau)*sigma);
call = @(sigma,b) q*normcdf(d(sigma,b)) - q_tau.*b.*normcdf(d(sigma,b)-sqrt(tau)*sigma);

q_call_10 = call(0.10,b);
q_call_15 = call(0.15,b);

q_put_10 = q_call_10 + q_tau*b - q;

disp(' ')
disp('Strike, Call Prices at vol 0.10 and 0.15, Put Prices at 0.10') 
[b q_call_10 q_call_15 q_put_10]

% call price v sigma 
sigma = [0.01:0.01:0.50]';

q_call_90 = call(sigma,90);
q_call_100 = call(sigma,100);
q_call_110 = call(sigma,110);

disp(' ') 
[dummy,i] = min(abs(q_call_110-2.00));
sigma_implied_parte = sigma(i)

figure(1) 
clf
plot(sigma,q_call_90,'k')
hold on 
plot(sigma,q_call_100,'b')
plot(sigma,q_call_110,'m')
axis([0 0.5 0 25])
xlabel('Volatility') 
ylabel('Call Price') 
text(0.02,22,'Strikes of 90, 100, and 110 as you move down')

print -depsc hw5_q1d.eps

return 
