function fval = lagrangeInterpolation(x0, y0, x)
fval = 0;
m = length(x0);
w = x0 - x0';
w(find(w == 0))= [];
w = reshape(w, m-1, m);
w1= (repmat(x0, m, 1))';
w1(1:m+1:end)=[];
w1 = x - reshape(w1, m-1, m);
fval = sum(prod(w1, 1) ./ prod(w, 1) .* y0);