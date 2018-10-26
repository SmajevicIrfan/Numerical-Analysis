// a)

clf();
x1 = linspace(-%pi, %pi, 101);
plot(x1, cos(x));

// b)

figure();
x2 = linspace(1, 7, 100);
plot(x2, sin(1 ./ x2), 'k-');

// c)

plot(x2, sin(2 * x2), 'bo');
