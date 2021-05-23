
function [Q,R] = QRGramSchmidt(A)

n = size(A,1);
m = size(A,2);
Q = zeros(n,m);
R = zeros(m,m);

for k = 1:m
    Q(:,k) = zeros(n,1);
    for j = 1:(k-1)
        R(j,k) = dot(Q(:,j),A(:,k));
        Q(:,k) = Q(:,k) + R(j,k)*Q(:,j);
    end
    Q(:,k) = A(:,k) - Q(:,k);
    if (norm(Q(:,k))~=0)
        R(k,k) = norm(Q(:,k));
        Q(:,k) = Q(:,k)./R(k,k);
    end
end