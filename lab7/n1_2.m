format compact
clc
clear all
%%

ten = csvread('ten.csv',:,1);
mean = mean(ten)
std = std(ten)