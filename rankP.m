function [ xx ] = my_rank2_power( u, v, b)
% ypologismos tou Ω gia thn ekfrasi ((u*u' + v*v')^p)*b alla me ektelesi
% praksewn apo deksia
p = 10;

[ x1, y1] = size(u*u');
w1 = x1*y1;     % u*u'

[ x2, y2] = size(v*v');
w2 = x2*y2;     % v*v'

w3 = w1;     % A = u*u' + v*v'

w4 = x1*(2*x1-1);  %  A*b

w5 = (p-1)*x1*(2*x1-1);    % A*A*...*A*b

xx = w1 + w2 + w3 + w4 + w5;
end

