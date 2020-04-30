% y = 1 + 2x
x0 = 1:10;
m = length(x0);
y0 = 2*x0 + 1 + rand(1, m);
A = [ones(m, 1) x0'];
x = (A'*A)\(A'*y0');
plot(x0, 2*x0 + 1, 'r', x0, y0, 'b');