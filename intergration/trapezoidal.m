% f(x) = 1/x  x��[1.1, 4.1]
clear all;clc;
f = @(x)(1 ./ x);
lb = 1.1; %�½�
ub = 4.1; %�Ͻ�
n = 50; %�������
h = (ub - lb) / n; %����
x0 = lb+h:h:ub;
I = h * ((f(ub) + f(lb)) / 2 + sum(f(x0))); %�������ι�ʽ
true_I = log(ub/lb);
err = I - true_I;
fprintf("����ֵ%g��ʵֵ%g�����Ϊ%g", I, true_I, err);