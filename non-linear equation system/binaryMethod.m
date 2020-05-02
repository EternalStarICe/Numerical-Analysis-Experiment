% f(x) = ln(x-2) x��[2.5, 4]
clear all; clc;
l = 2.5; %�½�
r = 4; %�Ͻ�
f = @(x)(log(x-2));
eps = 1e-9; %���ֵ
while f(l) * f(r) < 0
    mid = (l + r) / 2;
    if abs(f(mid)) < eps %�������Ҫ����ֹͣ
        break;
    end
    if f(mid) * f(r) < 0 %�������������
        l = mid;
    elseif f(mid) * f(l) < 0 %�������������
            r = mid;
    end
end
fprintf("���ƽ�Ϊ%g, ��ȷ��Ϊ3�����Ϊ%g", mid, mid-3);