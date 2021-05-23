
function B = Cholesky(A)
    if (A~=A')
        disp('Input must be symmetric!')
        B = NaN;
        return
    else
        B = tril(A);
        n = size(A,1);
        for j=1:n
            for k=1:(j-1)
                B(j,j) = B(j,j) - (B(j,k))^2;
            end
            if (B(j,j)<=0)
                disp('Error! Pivot must be positive')
                B = NaN;
                return
            else
                B(j,j) = sqrt(B(j,j));
                for i=(j+1):n
                    for k=1:(j-1)
                        B(i,j) = B(i,j) - B(j,k)*B(i,k);
                    end
                    B(i,j) = B(i,j)/B(j,j);
                end
            end
        end
    end
end