function result = f_2d(pol, x, y)
    [~, w] = size(pol);
    indices = zeros(1, w);
    
    for i = 1:w
        indices(i) = gorner(pol(:,i), y);
    end
    
    result = gorner(indices, x);   
end