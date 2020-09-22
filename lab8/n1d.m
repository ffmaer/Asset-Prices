clc
clear all
format compact

%%

a0 = 0.06;
phi=0.959;
a1=-sqrt((2.703/1200)^2*(1-phi^2));
sum=a1;


for i=2:24
    a2=a1*phi;
    sum=sum+a2;
    a1=a2;
end


(a0^2-sum^2)/23