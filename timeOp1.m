i = 7:12; 
n = 2.^i; 
j=1;   
time1 = [0;0;0;0];
time2 =[0;0;0;0]; 
for j = 1:4    
    A = rand(n(j), n(j));         
    b = rand(n(j), 1);         
    handlu = @() lu(A);     
    time1(j) = timeit(handlu, 2);         
    handlab = @() A*b;     
    time2(j) = timeit(handlab, 1);      
end
finalTime1(1, j) = sum(time1)./ 4; 
finalTime2(1, j) = sum(time2)./ 4;