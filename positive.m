function bool = positive(pol)
    for i = 1:length(pol)
        if (pol(i) <= 0) 
            bool = 0;
            return
        end
    end
    
    bool = 1;
end