function [auto_cov] = auto_cov_fun(one,k)

one_mean = mean(one);
sum = 0;
elements = size(one,1)-k;
for t=1:elements
    sum = sum + (one(t)-one_mean)*(one(t+k)-one_mean);
end
auto_cov = sum/(elements);