format compact
clear all
clc

p=[-0.6 1.6;
    0.3 0.7]
pp=p
for k=1:100
    pp=pp*p
end