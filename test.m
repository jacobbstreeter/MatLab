clear
clc
clear all
%% Intro

% % x = sin(2)
% a=sin(5);
% b=cos(5)
N = input('Enter a value for N - ');
fprintf(' N =%g \n',500)
fprintf(' x =%1.12g \n',pi)
fprintf(' x =%1.10e \n',pi)
fprintf(' x =%6.2f \n',pi)
fprintf(' x =%12.8f y =%12.8f \n',5,exp(5))

%% Lab part 1 (a-f)
A=[1,2,3;4,5,6;7,8,9];
B=[1,4,5;9,6,3;2,3,1];
v1=[1,1,2];
v2=[0.40824829 ; -0.81649658 ; 0.40824829];

A * B %matric multiplication
A .* B %each postion got multiplied together

A ./ B %each postion got divided by each other

A * v1 %Can't do it because of matrix multiplication
v1 * A %Matrix multiplication for the two matricies
A * v2 %Matrix multiplication for the two matricies

A(2,2).*B(2,2)

exp(A+i*B) %Made B matrix complex then added A

A(:,2) ./ v2
%% Lab part 2 (a)

d = 10000;
v = 750;
g = 9.8;

x = (asin((d*g)/v^2))/2
%% Lab part 2 (b)

v1 = 30000;
v2 = [-5000, 8000, 1000];
m1 = 6e24;
m2 = 1e19;

vf = ((m1.*v1) + (m2.*v2)./ (m1 + m2))
%% 

a=sin(5);
b=cos(5)

A = [1  2  3  4
     5  6  7  8
     9 10 11 12
     13 14 15 16]
 %% 3.1 Debugging
 
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

%% 4.1 Loops and Logic

clear; close all;
% set s to zero so that 1/n^2 can be repeatedly added to it
s=0;
N=10000; % set the upper limit of the sum
for n=1:N % start of the loop
s = s + 1/n^2; % add 1/n^2 to s each iteration
end % end of the loop
fprintf(' Sum = %g \n',s) % print the answer

%% 4.2 Loops

clear; close all;
P=1; % set the first term in the product
N=20; % set the upper limit of the product
for n=2:N % start the loop at n=2 because we already loaded n=1
P=P*n; % multiply by n each time, put the answer back into P
end % end of the loop
fprintf(' N! = %g \n',P) % print the answer

factorial(20)

%% 4.3 Loops in matrix

clear; close all;
a(1)=1; % put the first element into the array
N=19; % the first one is loaded, so let's load 19 more
for n=1:N % start the loop
a(n+1)=(2*n-1)/(2*n+1)*a(n); % the recursion relation
end
disp(a) % display the resulting array of values

%% 4.4 Logic (if/than)

clear; close all;
a=1;
b=3;
if a>0
    c=1 % If a is positive set c to 1
else
    c=0 %if a is 0 or negative, set c to zero
end

% if either a or b is non-negative, add them to obtain c;
% otherwise multiply a and b to obtain c
if a>=0 | b>=0 % either non-negative
    c=a+b
else
    c=a*b % otherwise multiply them to obtain c
end

%% 4.5 While loop

clear; close all;
term=1 % load the first term in the sum, 1/1^2=1
s=term; % load s with this first term
% start of the loop - set a counter n to one
n=1;
while term > 1e-10 % loop until term drops below 1e-10
n=n+1; % add 1 to n so that it will count: 2,3,4,5,...
term=1/n^2; % calculate the next term to add
s=s+term; % add 1/n^2 to s until the condition is met
end % end of the loop
fprintf(' Sum = %g \n',s)

%% 4.6

clear; close all;
term=1; % load the first term in the sum, 1/1^2=1
s=term; % load s with this first term
% start of the loop - set a counter n to one
n=1;
while term > 1e-100 % set a ridiculously small term.
% Don't really do this, as you
% only have 15 digits of precision.
n=n+1; % add 1 to n so that it will count: 2,3,4,5,...
term=1/n^2;
s=s+term;
if (n > 1000) % Break stop if it is taking too long
disp('This is taking too long. I''m out of here...')
break
end
end % end of the loop
fprintf(' Sum = %g \n',s)

%% Lab part 3 (a)

clear; % clear all variables from memory
close all; % close any figure windows
N=12;
% steps the value of n from 1 to N
for n=1:N 
    r = mod(24,n); %devide 24 by number 1 through 12
    if (r==0) %if no remainder it is a factor
        fprintf('%g is a factor of 24 \n',n);
    else
        continue %move on with code
    end
end

clear; % clear all variables from memory
close all; % close any figure windows
N=9324;
% steps the value of n from 1 to N
for n=1:N 
    r = mod(18648,n); %devide 18648 by number 1 through 9324
    if (r==0) %if no remainder it is a factor
        fprintf('%g is a factor of 24 \n',n);
    else
        continue %move to next number
    end
end
%% Lab part 3 (b)
clear;
v = 750;
g = 9.8; 
t = 0;
d = 0;

while d < 5000
    t = t + 0.1;
    d = (v^2/g)*sind(2*t);
end

fprintf(' t = %g \n', t)

%% Lab part 3 (c)

debt = 100000;
int = 0.005;
months = 0;

while debt > 0
    months = months +1;
    debt = (debt + (debt * int)) - 1000;
    if debt < 0
        b = debt;
        debt = 0;
    end
end

totalPayed = months * 1000 - b;

fprintf (' Total Payed = %d \n', totalPayed)
    
