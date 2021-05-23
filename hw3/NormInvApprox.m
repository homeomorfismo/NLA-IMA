
function l = NormInvApprox(A)

    y = zeros(size(A,1),1);
    
    y(1) = 1/A(1,1);
    
    for i=2:size(A,1)
        s = 0;
        for j=1:(i-1)
            s = s + A(i,j)*y(j);
        end
        y(i) = -(sign(s)+s)/A(i,i);
    end
    l = norm(y)/sqrt(size(A,1));
    
end