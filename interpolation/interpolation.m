clear all; clc;
f = @(x)(x.^2); %fΪ��ֵ����
% (x0, y0)Ϊ��ֵ��
x0 = [1 2 5 6 8];
y0 = f(x0);
x1 = 2.5; % �����
%ʹ���������ղ�ֵ
% y1 = lagrangeInterpolation(x0, y0, x1);
% true_y1 = f(x1);
% fprintf("�������ղ�ֵ��ֵΪ%g, ʵ��ֵΪ%g, ���Ϊ%g", y1, true_y1, true_y1 - y1);
%ʹ��ţ�ٲ�ֵ
y2 = newtonInterpolation(x0, y0, x1);
true_y2 = f(x1);
fprintf("ţ�ٲ�ֵ��ֵΪ%g, ʵ��ֵΪ%g, ���Ϊ%g", y2, true_y2, true_y2 - y2);