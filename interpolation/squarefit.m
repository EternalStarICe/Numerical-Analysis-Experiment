clear all; clc;
% y = 1 + 2x
x0 = 1:10; %10����
m = length(x0);
y0 = 2*x0 + 1 + rand(1, m); %��������
A = [ones(m, 1) x0'];
x = (A'*A)\(A'*y0'); %�������򷽳����
plot(x0, x(1) + x(2)*x0, 'r', x0, y0, '*');