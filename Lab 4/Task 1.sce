P1_Coeff = [1, 2, 5];
P2_Roots = [1, 3, 10];

P1 = poly(P1_Coeff, "x", "coeff");
P2 = poly(P2_Roots, "x", ["roots"]);

// a)
rts = roots(P1);

// b)
coefs = coeff(P2);
