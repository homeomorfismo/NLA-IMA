
function l = NormApprox(A)

    x = zeros(size(A,1),1);
    y = zeros(size(A,1),1);
    
    x(1) = 1;
    y1(1) = A(1,1);
    
    for i=2:size(A,1)
        s = 0;
        for j=1:(i-1)
            s = s + A(i,j)*x(j);
        end
        if (abs(A(i,i)+s)>abs(A(i,i)-s))
            x(i) = 1;
        else
            x(i) = -1;
        end
        y(i) = A(i,i)*x(i) + s;
    end
    l = norm(y)/sqrt(size(A,1));
    
end