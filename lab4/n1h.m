format compact
clc
clear all

disp('with disaster');
mu=0.023;
sigma=0.0183;
w=0.01;
delta=0.3;



logg=[mu+sigma mu-sigma mu-delta];
p=[(1-w)/2 (1-w)/2 w];

% preference
beta=0.99;

for alpha=5:5:20

    alpha
    % asset prices
    g=exp(logg);
    m= beta*g.^(-alpha);
    hm=log(sum(p.*m))-sum(p.*log(m))
    disp('----------');

end

%%

disp('without disaster')
mu = 0.02;
sigma = 0.035;
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
    hm=log(sum(p.*m))-sum(p.*log(m))
    disp('----------');

end

%%

disp('with boom');
mu=0.023;
sigma=0.0183;
w=0.01;
delta=-0.3;



logg=[mu+sigma mu-sigma mu-delta];
p=[(1-w)/2 (1-w)/2 w];

% preference
beta=0.99;

for alpha=5:5:20

    alpha
    % asset prices
    g=exp(logg);
    m= beta*g.^(-alpha);
    hm=log(sum(p.*m))-sum(p.*log(m))
    disp('----------');

end