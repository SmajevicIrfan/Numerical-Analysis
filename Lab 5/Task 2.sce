P = poly([5, 1, 2, 1], "x", "coeff");

y = poly(0, "y");
Q_tmp = poly([1, 1], "y", "coeff");
Q = horner(Q_tmp, 1 / y ^ 2);

P_1 = derivat(P);
Q_1 = derivat(Q);

P_2 = derivat(P_1);
Q_2 = derivat(Q_1);
