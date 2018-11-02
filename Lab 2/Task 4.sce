C = testmatrix('magi', 3);
D = inv(testmatrix('hilb', 3));

// a)
dC = det(C);
dD = det(D);

// b)
rC = rank(C);
rD = rank(D);

// c)
cC = cond(C);
cD = cond(D);
