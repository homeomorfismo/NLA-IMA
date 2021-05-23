
function S = SymmetricMat(n)
    S = rand(n);
    S = S + S';
end