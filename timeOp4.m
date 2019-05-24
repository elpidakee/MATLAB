i = 7:12; 
n = 2.^i; j=1;  
tableab =[0;0;0;0];  
for j = 1:4    
    A = rand(n(j), n(j));    
    b = rand(n(j), 1);     
    [L, U] = lu(A);     
    d = triu(n(j),n(j));          
    handle_ab = @() mtimes(L, b);        
    tableab(j) = timeit(handle_ab, 1);     
end 