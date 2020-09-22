format compact
clc
clear all


syms mu sigma

% w=0.01;
% delta=0.3;
% 
% 
% logg=[mu+sigma mu-sigma mu-delta];
% p=[(1-w)/2 (1-w)/2 w];
% 
% mean = sum(p.*logg)
% variance = simplify(sum(p.*(logg.^2))-mean^2)


solve('mu - 3/1000=0.02',mu)
solve('(99*sigma^2)/100 + 891/1000000=0.035^2',sigma)