format compact
clc
syms x u;

single(subs(expand((x-u)^2),{x,x^2,x^3,x^4,u},{0,1,0,3,0}))
single(subs(expand((x-u)^3),{x,x^2,x^3,x^4,u},{0,1,0,3,0}))
single(subs(expand((x-u)^4),{x,x^2,x^3,x^4,u},{0,1,0,3,0}))