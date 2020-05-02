% dy/dx = 2xy
% y(0) = 2
clear all; clc;
% 给出初值条件
x0 = 0;
y0 = 2;
h = 0.01; %步长
f = @(x, y)(2 * x * y);
for steps = 1:100
    k1 = f(x0, y0);
    k2 = f(x0 + h/2, y0 + h*k1/2);
    k3 = f(x0 + h/2, y0 + h*k2/2);
    k4 = f(x0 + h, y0 + h*k3);
    x1 = x0 + h;
    y1 = y0 + h * (k1 + 2*k2 + 2*k3 + k4) / 6;
    x0 = x1;
    y0 = y1;
    fprintf("x = %g, y = %g\n", x0, y0);
end