format compact
clc
clear all
syms y k1 k2 alpha
q1=-(y-k1)^2+(-alpha*y)*2*k2-2*k2*(-alpha*k1+alpha^2*k2/2)
q2=-(y-k1+alpha*k2)^2
simplify(q1-q2)