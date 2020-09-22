format compact
clc
clear all

% with disaster
% mu=0.023;
% sigma=0.0183;
% w=0.01;
% delta=0.3;

%without disaster
mu = 0.02;
sigma = 0.035;
w=0;
delta=0;

logg=[mu+sigma mu-sigma mu-delta];
p=[(1-w)/2 (1-w)/2 w];

% preference
beta=0.99;

% for alpha=5:5:20

    alpha=5
   
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

% end

% bar(logg,p)

hm=log(sum(p.*m))-sum(p.*log(m))