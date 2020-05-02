% f(x) = ln(x-2) x∈[2.5, 4]
clear all; clc;
l = 2.5; %下界
r = 4; %上界
f = @(x)(log(x-2));
eps = 1e-9; %误差值
while f(l) * f(r) < 0
    mid = (l + r) / 2;
    if abs(f(mid)) < eps %满足误差要求，则停止
        break;
    end
    if f(mid) * f(r) < 0 %解存在于右区间
        l = mid;
    elseif f(mid) * f(l) < 0 %解存在于左区间
            r = mid;
    end
end
fprintf("近似解为%g, 精确解为3，误差为%g", mid, mid-3);