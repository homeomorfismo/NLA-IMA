
function x = BackSub(U,y)
    n = size(U,1);
    x = zeros(n,1);
    for i = n:-1:1
        s = 0;
        for j = n:-1:(i+1)
            s = s + U(i,j)*x(j);
        end
        x(i) = (y(i)-s)/U(i,i);
    end
end