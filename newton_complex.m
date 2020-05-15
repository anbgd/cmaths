
function [x, y] = newton_complex(F, G)
    eps = power(10, -3);
    x = 1;
    y = 1;
    h = 1;
    k = 1;
    
    while abs(h) > eps || abs(k) > eps
        J = jacobian(F, G, x, y);

        if J == 0
            print("J = 0")
            return
        end
        
        h = get_h(F, G, x, y);
        k = get_k(F, G, x, y);
        x = x - h;
        y = y - k;
    end
end