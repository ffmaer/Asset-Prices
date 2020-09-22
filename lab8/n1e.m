
clc
clear all
format compact

%%


phi=0.959;
n=[0 1 3 6 12 36 60 120];
a1=sqrt((2.703/1200)^2*(1-phi^2));
my = phi.^n*a1/sqrt(1-phi^2)*1200