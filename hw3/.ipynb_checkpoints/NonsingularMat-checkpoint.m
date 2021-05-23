
function A = NonsingularMat(n)
    A=0;
    while det(A)==0
        A=rand(n,n);
    end
end