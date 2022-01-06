clear
clc
clear all

% x = sin(2)
% N = input('Enter a value for N - ');
% fprintf(' N =%g \n',500)
% fprintf(' x =%1.12g \n',pi)
% fprintf(' x =%1.10e \n',pi)
% fprintf(' x =%6.2f \n',pi)
% fprintf(' x =%12.8f y =%12.8f \n',5,exp(5))

%a)
% d = 10000;
% v = 750;
% g = 9.8;
% 
% x = (asin((d*g)/v^2))/2

v1 = 30000;
v2 = [-5000, 8000, 1000];
m1 = 6e24;
m2 = 1e19;

vf = ((m1.*v1) + (m2.*v2)./ (m1 + m2))

