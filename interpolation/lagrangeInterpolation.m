function fval = lagrangeInterpolation(x0, y0, x)
fval = 0;
m = length(x0);
w = x0 - x0';% w为差值矩阵，如w的第一列分别为0, x1 - x2, x1 - x3, ..., x1 - xn
w(find(w == 0))= [];% 将对角线元素，即0元素删去，则第i列的累乘为第i个基函数的分母
w = reshape(w, m-1, m);
w1= (repmat(x0, m, 1))';% 将x0按行复制成(m, m)的矩阵
w1(1:m+1:end)=[];% 删除对角线元素
w1 = x - reshape(w1, m-1, m); % w1的第i列的累乘即为第i个基函数的分子
fval = sum(prod(w1, 1) ./ prod(w, 1) .* y0);