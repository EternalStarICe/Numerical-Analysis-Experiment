% f(x) = ln(x-2) x∈[2.5, 4]
clear all; clc;
x0 = 3.5;
f = @(x)(log(x-2)); %原函数
df = @(x)(1/(x-2)); %原函数的一阶导数
g = @(x)(x - f(x)/df(x)); %牛顿迭代的格式
eps = 1e-9; %误差
while abs(g(x0)-x0) > eps %不满足误差条件
    x0 = g(x0);
end
fprintf("近似解%g, 精确解为3，误差为%g", x0, x0-3);