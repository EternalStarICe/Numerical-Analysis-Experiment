% f(x) = 1/x  x∈[1.1, 4.1]
clear all;clc;
f = @(x)(1 ./ x);
lb = 1.1; %下界
ub = 4.1; %上界
n = 50; %区间个数
h = (ub - lb) / n; %步长
x0 = lb+h:h:ub;
I = h * ((f(ub) + f(lb)) / 2 + sum(f(x0))); %复化梯形公式
true_I = log(ub/lb);
err = I - true_I;
fprintf("近似值%g，实值%g，误差为%g", I, true_I, err);