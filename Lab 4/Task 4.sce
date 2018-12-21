[T4a] = chepol(4, "x");

T0 = 1;
T1 = poly(0, "x");
T2 = 2 * poly(0, "x") * T1 - T0;
T3 = 2 * poly(0, "x") * T2 - T1;
T4b = 2 * poly(0, "x") * T3 - T2;
