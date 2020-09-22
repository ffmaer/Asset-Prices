format compact
syms s r;
clc
ks=-log(1-s/r);
% subs(diff(ks,1),s,0)
% subs(diff(ks,2),s,0)
% subs(diff(ks,3),s,0)
% subs(diff(ks,4),s,0)

% exp(subs(ks,s,-1))



syms a u;
ks1=subs(ks,{s,r},{-1,50});
ks1a=subs(ks,{s,r},{a-1,50});
rp=ks1-(1/(1-a))*ks1a
subs(rp,a,2)
subs(rp,a,10)
subs(rp,a,20)