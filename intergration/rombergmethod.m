% f(x) = 1/x  x° [1.1, 4.1]  «ÛR_1
clear all;clc;
f = @(x)(1 ./ x);
lb = 1.1;
ub = 4.1;
n = 8;
T = zeros(n);
T(1, 1) = (ub - lb) * (f(lb) + f(ub)) / 2;
for k = 1:n-1
    T(k+1, 1) = T(k, 1) / 2 + (ub - lb) / 2^k * sum(f(lb + (ub - lb) .* ((1:2^(k-1)) - 1/2) / 2^(k-1)));
end
for k = 2:4
    for i = 1:n + 1 -k
        T(i, k) = (4^k * T(i+1, k-1) - T(i, k-1)) / (4^k - 1);
    end
end
T;
min(T((find(T(:, 4) ~= 0)),4))