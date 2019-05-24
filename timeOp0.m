i = 7:12; 
n = 2.^i;   
j=1; 
timelu = [0;0;0;0]; 
for j = 1:4      
    tic      
    A = rand(n(j), n(j));       
    [L, U, P] = lu(A);       
    timelu(j) = toc; 
end
j=1; 
timeab = [0;0;0;0]; 
for j = 1:4    
    A = rand(n(j), n(j));     
    b = rand(n(j), 1);    
    tic        
    c=A*b;        
    timeab(j) = toc; 
end

