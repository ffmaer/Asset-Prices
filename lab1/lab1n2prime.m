format compact
syms u s d
h=exp(u*s+d^2*s^2/2);
h1=diff(h,s,1);
subs(h1,{u,s,d},{0,0,1})

h2=diff(h,s,2);
subs(h2,{u,s,d},{0,0,1})

h3=diff(h,s,3);
subs(h3,{u,s,d},{0,0,1})

h4=diff(h,s,4);
subs(h4,{u,s,d},{0,0,1})