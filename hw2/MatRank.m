function A = MatRank(n,m,r)

if (r>min(n,m))
    A = 0;
    disp('Error')
else
    sigma = 0;
    while (det(sigma)==0)
        sigma = rand(r,r);
    end
    Sigma = [sigma zeros(r,m-r); zeros(n-r,r) zeros(n-r,m-r)];
    
    U = 0;
    V = 0;
    while ((det(U)==0)||(det(V)==0))
        U = GramSchmidt(rand(n,n));
        V = GramSchmidt(rand(m,m));
    end
    A = U*Sigma*V;
end