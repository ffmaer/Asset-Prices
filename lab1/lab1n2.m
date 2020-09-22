format compact
mu=0;
sigma=1;
nobs=1000;
x=normrnd(mu,sigma,nobs,1);
xbar=mean(x)
moments= mean([(x-xbar).^2 (x-xbar).^3 (x-xbar).^4])

mean(x)
std(x)
skewness(x)
kurtosis(x)