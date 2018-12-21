// a)
clf();
x1 = linspace(0, 2 * %pi, 100);
plot(x1, sin(x1));

// b)
figure();
x2 = linspace(-1, 1, 100);
plot(x2, (1 ./ (1 + 25 * x2 ** 2)));
