i = 7:12;
n = 2.^i; 
j=1;
timelu = [0;0;0;0]; 
for j = 1:4     
    A = rand(n(j), n(j));     
    b = rand(n(j), 1);     
    [L, U, P] = lu(A);           
    for y = 1:20         
        tic         
        [L, U, P] = lu(A);        
        timelu(y) = toc;            
    end
    finalTimelu(1, j) = sum(timelu)./ 20; 
end
j=1; 
timeab = [0;0;0;0];
for j = 1:4    
    A = rand(n(j), n(j));    
    b = rand(n(j), 1);    
    c = A*b;    
    for y = 1:20       
        tic      
        c = A*b;       
        timeab(y) = toc;    
    end
    finalTimeab(1, j) = sum(timeab)./20;
end  

