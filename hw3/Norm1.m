
function r1 = Norm1(A)

    r1 = 0;
    for i = 1:size(A,1)
        if (norm(A(:,i),1)>r1)
            r1 = norm(A(:,i));
        end
    end