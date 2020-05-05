% f(x) = ln(x-2) x∈[2.5, 4]
clear all; clc;
x0 = 4;
x1 = 3.5;
f = @(x)(log(x-2));
g = @(x1, x0)(x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0))); %割线迭代的格式
eps = 1e-9; %误差
while abs(g(x1, x0) - x1) > eps %不满足误差条件
    t = g(x1, x0);
    x0 = x1;
    x1 = t;
end
fprintf("近似解%g，精确解为3，误差为%g", x0, x0-3);