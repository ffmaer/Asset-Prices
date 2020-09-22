function [auto_corr] = auto_corr_fun(one, k)

auto_cov = auto_cov_fun(one,k);
cov = auto_cov_fun(one,0);
auto_corr = auto_cov/cov;