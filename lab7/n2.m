format compact
clear all
clc

phi =0.9;
w = 0.9;
sum =0;
for k=1:100
    
    sum=sum+phi^(k-1);
    [(sum)*(1-phi)*w+phi^k (sum)*(1-phi)*(1-w);
    (sum)*(1-phi)*w (sum)*(1-phi)*(1-w)+phi^k]

end