format compact
clc
load('hw4.mat');
sharp=@(m,s) m./s; 

% [data(:,2) data(:,3)]

rf=data(:,3);
market = data(:,2);
small= data(:,4)-rf;
medium= data(:,5)-rf;
high= data(:,6)-rf;

series=[market small medium high]./100;

disp('before log');
m=mean(series)
s=std(series)
sharp(m,s)

o = ones(size(series));
log_series = log(series+o);

disp('after log');
m=mean(log_series)
s=std(log_series)
sharp(m,s)


