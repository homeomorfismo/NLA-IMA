
function [C]=MatMult(A,B)

if (size(A)~=size(B))
    disp('Unable to compute A*B: matrix sizes must be equal')
else
   C = zeros(size(A));
   
for i=1:size(A,1)
    for j=1:size(B,2)
        for k=1:size(A,2)
            C(i,j) = C(i,j) + A(i,k)*B(k,j);
        end
    end
end
  
end