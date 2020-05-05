% f(x) = ln(x-2) x��[2.5, 4]
clear all; clc;
x0 = 4;
x1 = 3.5;
f = @(x)(log(x-2));
g = @(x1, x0)(x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0))); %���ߵ����ĸ�ʽ
eps = 1e-9; %���
while abs(g(x1, x0) - x1) > eps %�������������
    t = g(x1, x0);
    x0 = x1;
    x1 = t;
end
fprintf("���ƽ�%g����ȷ��Ϊ3�����Ϊ%g", x0, x0-3);