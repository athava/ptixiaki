function integ = integral(tseries,t)

n = length(tseries);
integ = [];
     
for i = 1:1:n                
        sum = 0;
        for j = 1:1:i
            sum = sum + tseries(j)*t;
        end
        integ(i) = sum;   
end
integ = integ';
end

