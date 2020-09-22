format compact;
disp('cumulant generating function');
syms p s d;
hs=1-p+p*exp(s*d);
ks=log(hs);
for x=1:4
    k=diff(ks,s,x);
    subs(k,s,0);
end

k2=subs(diff(ks,s,2),s,0);
k3=subs(diff(ks,s,3),s,0);
k4=subs(diff(ks,s,4),s,0);

r1=k3/(k2)^(3/2);
r2=k4/(k2)^2;