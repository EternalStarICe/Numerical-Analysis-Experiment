% f(x) = 1/x  x∈[1.1, 4.1]  求R
clear all;clc;
f = @(x)(1 ./ x);
lb = 1.1; %下界
ub = 4.1; %上界
n = 8; %划分区间个数
T = zeros(n); %T的第一列对应T，第二列对应S，第三列对应C，第四列对应R
T(1, 1) = (ub - lb) * (f(lb) + f(ub)) / 2;
for k = 1:n-1
    % 求出T的第一列
    T(k+1, 1) = T(k, 1) / 2 + (ub - lb) / 2^k * sum(f(lb + (ub - lb) .* ((1:2^(k-1)) - 1/2) / 2^(k-1)));
end
for k = 2:4 % 分别求出第2-4列
    for i = 1:n + 1 -k
        T(i, k) = (4^k * T(i+1, k-1) - T(i, k-1)) / (4^k - 1); %换车道
    end
end
T;
I = min(T((find(T(:, 4) ~= 0)),4));
true_I = log(4.1/1.1);
fprintf("近似值为%g, 精确值为%g, 误差为%g", I, true_I, I-true_I)