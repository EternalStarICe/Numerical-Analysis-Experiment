% f(x) = ln(x-2) x��[2.5, 4]
clear all; clc;
x0 = 3.5;
f = @(x)(log(x-2)); %ԭ����
df = @(x)(1/(x-2)); %ԭ������һ�׵���
g = @(x)(x - f(x)/df(x)); %ţ�ٵ����ĸ�ʽ
eps = 1e-9; %���
while abs(g(x0)-x0) > eps %�������������
    x0 = g(x0);
end
fprintf("���ƽ�%g, ��ȷ��Ϊ3�����Ϊ%g", x0, x0-3);