% f(x) = ln(x-2) x¡Ê[2.5, 4]
x0 = 3.5;
f = @(x)(log(x-2));
df = @(x)(1/(x-2));
g = @(x)(x - f(x)/df(x));
eps = 1e-9;
while abs(g(x0)-x0) > eps
    x0 = g(x0);
end
x0