
function S = PdSMat(n)
    S = SymmetricMat(n);
    [P, D] = eig(S);
    D = abs(D);
    D = D + norm(D)*eye(size(D));
    S = P*D*inv(P);
end