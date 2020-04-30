% f(x) = 1/x  x¡Ê[1.1, 4.1]
clear all;clc;
f = @(x)(1 ./ x);
lb = 1.1;
ub = 4.1;
n = 50;
h = (ub - lb) / n;
x0 = lb+h:h:ub;
I = h * ((f(ub) + f(lb)) / 2 + sum(f(x0)))
true_I = log(ub/lb)