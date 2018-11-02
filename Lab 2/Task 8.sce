A = [1, 0, 1; -1, -2, 0; 0, 1, -1];

// a)
[U, S, V] = svd(A);

// b)
s = svd(A);

// c)
evals = spec(A);

// d)
Ap = A
for i=1:10
    [Q, R] = qr(Ap);
    Ap = R * Q;
end
