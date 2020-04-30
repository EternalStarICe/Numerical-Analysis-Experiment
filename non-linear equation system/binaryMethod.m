% f(x) = ln(x-2) x¡Ê[2.5, 4]
l = 2.5;
r = 4;
f = @(x)(log(x-2));
eps = 1e-9;
while f(l) * f(r) < 0
    mid = (l + r) / 2;
    if abs(f(mid)) < eps
        break;
    end
    if f(mid) * f(r) < 0
        l = mid;
    elseif f(mid) * f(l) < 0
            r = mid;
    end
end
mid