function result = get_k(F, G, x, y) 
    D = [f_2d(der2x(F), x, y), f_2d(F, x, y);
         f_2d(der2x(G), x, y), f_2d(G, x, y)];

    result = det(D) / jacobian(F, G, x, y);
end
