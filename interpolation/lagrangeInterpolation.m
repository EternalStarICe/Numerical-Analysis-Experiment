function fval = lagrangeInterpolation(x0, y0, x)
fval = 0;
m = length(x0);
w = x0 - x0';% wΪ��ֵ������w�ĵ�һ�зֱ�Ϊ0, x1 - x2, x1 - x3, ..., x1 - xn
w(find(w == 0))= [];% ���Խ���Ԫ�أ���0Ԫ��ɾȥ�����i�е��۳�Ϊ��i���������ķ�ĸ
w = reshape(w, m-1, m);
w1= (repmat(x0, m, 1))';% ��x0���и��Ƴ�(m, m)�ľ���
w1(1:m+1:end)=[];% ɾ���Խ���Ԫ��
w1 = x - reshape(w1, m-1, m); % w1�ĵ�i�е��۳˼�Ϊ��i���������ķ���
fval = sum(prod(w1, 1) ./ prod(w, 1) .* y0);