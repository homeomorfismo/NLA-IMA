function Q = GramSchmidt(A)

n = size(A,2);
Q = zeros(size(A));

for k = 1:n
    Q(:,k) = zeros(size(A,1),1);
    for j = 1:(k-1)
        Q(:,k) = Q(:,k) + dot(A(:,k),Q(:,j))*Q(:,j);
    end
    Q(:,k) = A(:,k) - Q(:,k);
    if (norm(Q(:,k))~=0)
        Q(:,k) = Q(:,k)./norm(Q(:,k));
    end
end