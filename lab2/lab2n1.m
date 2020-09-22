format compact
clc
syms a u s;
ks=u * s+0.02^2*s^2/2;
ks1=subs(ks,s,1);
ks1a=subs(ks,s,1-a);
rp=ks1-(1/(1-a))*ks1a;
subs(rp,a,2)
subs(rp,a,10)
subs(rp,a,20)