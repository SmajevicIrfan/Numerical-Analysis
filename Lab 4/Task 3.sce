coeffs = [1, 2, 3];
P = poly(coeffs, "x", "coeff");

a = horner(P, 5);
b = horner(P, [1:5])
c = horner(P, 5 + 2 * %i);
x = poly(0, "x");
d = horner(P, 1 / x);
