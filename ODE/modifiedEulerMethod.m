% dy/dx = 2xy
% y(0) = 2
clear all; clc;
% 给出初值条件
x0 = 0;
y0 = 2;
h = 0.01; %步长
f = @(x, y)(2 * x * y);
g = @(x, y)(y + h / 2 * (f(x, y) + f(x0, y0)));
for step = 1:100
    y1 = y0 + h * f(x0, y0);
    x1 = x0 + h;
    y1 = y0 + h / 2 * (f(x0, y0) + f(x1, y1));
    fprintf("x = %g, y = %g\n", x1, y1);
    x0 = x1;
    y0 = y1;
end