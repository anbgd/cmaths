function result = lab4n2(mat)
       if  m_sz(mat,1) == m_sz(mat,2) && mat(1,1)~=0
         if size(mat) ~= [1,1]
           result = lab4n2(mat(1:end-1,1:end-1));
           if result == 0
             return
           end
           Y = b_matr(mat(end,1:end-1),result);
           if abs(mat(end,end)-b_matr(Y, mat(1:end-1,end)))>0.000001
             O = 1/(mat(end,end)-b_matr(Y, mat(1:end-1,end)));
           else
             O=0;
             fprintf('division by 0, so the Invertible matrix does not exist')
           end
           X = b_matr(result, mat(1:end-1,end));
           if O~=0 && m_sz(b_matr(X*O,Y),1)==m_sz(X,1)
             result = [result+b_matr(X*O,Y), -1*O*X; -1*O*Y,O];
           else
             result = 0;
           end
         elseif size(mat) == [1,1]
           result = 1/mat;
         end
       else
         result = 0;
         fprintf('division by 0, so the Invertible matrix does not exist')
       end
end