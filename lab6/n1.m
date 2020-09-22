format compact
format long
clc
clear all
% syms w d1 d2 mu1 mu2 y
% py = (1-w)*(2*pi*d1 ^2)^(1/2)*exp(-(y-mu1)^2/(2*d1^2))+w*(2*pi*(d1^2+d2^2))^(1/2)*exp(-(y-(mu1+mu2))^2/(2*(d1^2+d2^2)));
% int(py,y,-Inf,Inf)

syms w theta s delta sigma mu
k=s*mu+s^2*sigma^2/2+log((1-w)+w*exp(theta*s+delta^2*s^2/2));
% subs(k,s,1)




 
eq=diff(k,s);
k1=simplify(subs(eq,s,0))

eq=diff(eq,s);
k2=simplify(subs(eq,s,0))

eq=diff(eq,s);
k3=simplify(subs(eq,s,0))

eq=diff(eq,s);
k4=simplify(subs(eq,s,0))


% gamma1=simplify(k3/(k2^(3/2)))
% gamma2=simplify(k4/(k2)^2)
