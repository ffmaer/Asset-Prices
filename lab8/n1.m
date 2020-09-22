clc
clear all
format compact
%%

a0 = 0.06;
phi=0.959;
a1=-sqrt((2.703/1200)^2*(1-phi^2))
sum=a1;
aim = (8.714-6.683)/1200;


for i=1:60
    a2=a1*phi;
    sum=sum+a1;
    a1=a2;
end

aim
(a0^2-sum^2)/2