
function x = ForwSub(L,y)
    n = size(L,1);
    x = zeros(n,1);
    for i = 1:n
        s = 0;
        for j = 1:(i-1)
            s = s + L(i,j)*x(j);
        end
        x(i) = (y(i)-s)/L(i,i);
    end
end