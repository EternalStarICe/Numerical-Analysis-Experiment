clear all; clc;
f = @(x)(x.^2); %f为插值函数
% (x0, y0)为插值点
x0 = [1 2 5 6 8];
y0 = f(x0);
x1 = 2.5; % 待求点
%使用拉格朗日插值
% y1 = lagrangeInterpolation(x0, y0, x1);
% true_y1 = f(x1);
% fprintf("拉格朗日插值的值为%g, 实际值为%g, 误差为%g", y1, true_y1, true_y1 - y1);
%使用牛顿插值
y2 = newtonInterpolation(x0, y0, x1);
true_y2 = f(x1);
fprintf("牛顿插值的值为%g, 实际值为%g, 误差为%g", y2, true_y2, true_y2 - y2);