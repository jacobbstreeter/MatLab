clear
clc
clear all

% % x = sin(2)
% a=sin(5);
% b=cos(5)
% % N = input('Enter a value for N - ');
% % fprintf(' N =%g \n',500)
% % fprintf(' x =%1.12g \n',pi)
% % fprintf(' x =%1.10e \n',pi)
% % fprintf(' x =%6.2f \n',pi)
% % fprintf(' x =%12.8f y =%12.8f \n',5,exp(5))

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

a=sin(5);
b=cos(5)

A = [1  2  3  4
     5  6  7  8
     9 10 11 12
     13 14 15 16]
 
clear; % clear all variables from memory
close all; % close any figure windows
% N is the largest number to test
N=12;
% steps the value of n from 1 to N
for n=1:N
% calculate the integer remainder of this value of n divided by 3
r = mod(n,3);
if (r==0)
% indicate that 3 is a factor of this n
fprintf(' 3 is a factor of %g \n', n);
else
% indicate that if 3 is not a factor of this n
fprintf(' 3 is not a factor of %g \n', n);
end
end
      