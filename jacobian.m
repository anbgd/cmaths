function result = jacobian(F, G, x, y)
    result = ... 
        det([f_2d(der2x(F), x, y), f_2d(der2y(F), x, y);
             f_2d(der2x(G), x, y), f_2d(der2y(G), x, y)]);
end