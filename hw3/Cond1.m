
function l = Cond1(A)

    r1 = Norm1(A);
    e = eye(size(A));
    b = ones(size(A,1),1)./size(A,1);
    r2 = 0;
    while 1
        x = A\b;
        if (norm(x,1) <= r2)
            l = r2*r1;
            return
        else
            r2 = norm(x,1);
        end
        y = sign(x);
        z = A'\y;
        [~,imax] = max(abs(z));
        if (abs(z(imax))<dot(z,b))
            l = r2*r1;
            return
        else
            b = e(:,imax);
        end
    end