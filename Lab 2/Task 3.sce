// a)

A1 = [2, 4, 6, 8; 3, 5, 7, 9];
B1 = 10 * ones(2, 4);

X11 = A1 / B1;
//X12 = A1 * inv(B1);
X13 = A1 * pinv(B1);

// b)

A2 = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B2 = [7, 5, 6; 2, 0, 8; 5, 7, 1];

X21 = A2 / B2;
X22 = A2 * inv(B2);
X23 = A2 * pinv(B2);