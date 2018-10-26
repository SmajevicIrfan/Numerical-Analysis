// Matrix D from previous task

A = [1, -4 * %i, sqrt(2); log(-1), sin(%pi / 2), cos(%pi / 3); asin(0.5), acos(0.8), exp(0.8)];

// a)

T = A.';

// b)

C = A';

// c)

D = A - T;

// d)

P1 = A * T;
P2 = T * A;

// e)

dif = det(A);
sr = sum(A, 'r');
sc = sum(A, 'c');
s = sum(A);
