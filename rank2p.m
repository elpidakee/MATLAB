function [ x ] = rank2_power( u, v, b)
% ypologismos tou Ω gia thn ekfrasi ((u*u' + v*v')^p)*b
p = 10;

[ x1, y1] = size(u*u');
w1 = x1*y1;     % u*u'

[ x2, y2] = size(v*v');
w2 = x2*y2;     % v*v'

w3 = w1;     % u*u' + v*v'

w4 = (x1^2)*((2*x1)-1)*(p-1); % (u*u' + v*v')^p)

w5 = x1*((2*x1)-1);  % ((u*u' + v*v')^p)*b

x = w1 + w2 + w3 + w4 + w5;
end

