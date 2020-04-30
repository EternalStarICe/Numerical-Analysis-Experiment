clear all; clc;
f = @(x)(x.^2);
x0 = [1 2 5 6 8];
y0 = f(x0);
x1 = 2.5;
%使用拉格朗日插值
% y1 = lagrangeInterpolation(x0, y0, x1)
% true_y1 = f(x1)
% true_y1 - y1
%使用牛顿插值
y1 = newtonInterpolation(x0, y0, x1)
true_y1 = f(x1)
true_y1 - y1