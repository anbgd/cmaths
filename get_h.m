function result = get_h(F, G, x, y) 
    D = [f_2d(F, x, y), f_2d(der2y(F), x, y);
         f_2d(G, x, y), f_2d(der2y(G), x, y)];

    result = det(D) / jacobian(F, G, x, y);
end
