n = 2.^[7 : 12];

j=1;

t_xronos = zeros( 6, 1);
rythmos = zeros( 6, 1);
for j = 1:6
    u = rand(n(j), 1);
    b = rand(n(j), 1);
    v = rand(n(j), 1);
    
    f_xr = @() rank2_power( u, v, b);
    t_xronos(j) = timeit(f_xr, 1);
    x = rank2_power( u, v, b);
    rythmos(j) = x/t_xronos(j);
end

t_xronos2 = zeros( 6, 1);
rythmos2 = zeros( 6, 1);
for j = 1:6
    u = rand(n(j), 1);
    b = rand(n(j), 1);
    v = rand(n(j), 1);
    
    f_xr2 = @() my_rank2_power( u, v, b);
    t_xronos2(j) = timeit( f_xr2, 1);
    xx = my_rank2_power( u, v, b);
    rythmos2(j) = xx/t_xronos2(j);
end

figure 
plot(t_xronos, n, 'b*-');
hold on
plot(t_xronos2, n, 'ko-');
legend('xronoi ekteleshs')
xlabel('Xronos(sec)')
ylabel ('Diastaseis pinaka (n)')
title('Xronos ektelesis me timeit')
hold off

figure 
plot(rythmos, n, 'b*-');
hold on
plot(rythmos2, n, 'ko-');
legend('rythmoi ekteleshs')
xlabel('rythmos GFlop/s')
ylabel ('Diastaseis pinaka (n)')
title('rythmos ektelesis se Gflop/s')
hold off