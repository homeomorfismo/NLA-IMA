
function [L U] = LUFacto(A)
    n = size(A,1);
    
    for k=1:(n-1)
        if (A(k,k)==0)
            disp('Error! Pivot must be nonzero')
            L = NaN;
            U = NaN;
            return
        else
            for i=(k+1):n
                A(i,k) = A(i,k)/A(k,k);
                for j=(k+1):n
                    A(i,j) = A(i,j) - A(i,k)*A(k,j);
                end
            end
        end
    end
    L = eye(n) + tril(A,-1);
    U = triu(A);
end