i = 7:12;
n = 2.^i;
j=1;   
time_ab = [0;0;0;0];   
for j = 1:4     
    A = rand(n(j), n(j));    
    b = rand(n(j), 1);   
    x = rand(n(j), 1);         
    handle_ab = @() mtimes(A, b);     
    time_ab(j) = timeit(handle_ab, 1);    
end 