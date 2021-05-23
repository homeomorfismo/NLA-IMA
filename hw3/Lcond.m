
function c = Lcond(A)

    %[Q,R] = QRGramSchmidt(A);
    r1 = NormApprox(R');
    r2 = NormInvApprox(R');
    c = r1*r2;