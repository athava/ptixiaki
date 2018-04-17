



for i = 1:1:7
    for j = 1:1:9
        Amean_val(i,j) = mean(newdata{1,i}{1,j});
      
        Amean_val(i+7,j) = mean(newdata{1,i+10}{1,j});
  
        Amean_val(i+14,j) = mean(newdata{1,i+20}{1,j});

        Amean_val(i+21,j) = mean(newdata{1,i+30}{1,j});

    end
    
end
