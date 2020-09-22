format compact
clc
clear all

mu=0.02;
sigma=0.035;
w=0;
delta=0;

logg=[mu+sigma mu-sigma mu-delta];
p=[(1-w)/2 (1-w)/2 w];

% preference
beta=0.99;

for alpha=5:5:20

    alpha
   
    % asset prices
    g=exp(logg);
    m= beta*g.^(-alpha);
    q1=sum(p.*m);
    r1=1/q1
    logr1=log(r1)
    d=g;

    qe=sum(p.*m.*d);
    logre = sum(p.*log(d))-log(qe);

    eq_prem=logre-logr1
    disp('----------');

end
