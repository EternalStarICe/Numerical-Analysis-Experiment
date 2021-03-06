function fval = newtonInterpolation(x0, y0, x)
m = length(x0) - 1;
T = zeros(m);
% 构造差商表的第一列，差商表为一个上三角
for i = 1:m
    T(i, 1) = (y0(i+1) - y0(i))/(x0(i+1) - x0(i));
end
% 构造差商表
for i = 2:m
    for j = 1:m+1-i
        T(j, i) = (T(j+1, i-1) - T(j, i-1)) / (x0(i+j) - x0(j));
    end
end
fval = y0(1);
xval = 1;
% 差商表的第i列的第1个元素为f[x1, ..., xi]
for i = 2:m+1
    xval = xval * (x - x0(i-1)); % xval对应(x-x1)(x-x2)....
    fval = fval + T(1, i-1) * xval;
end