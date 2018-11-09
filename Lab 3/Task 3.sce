clf();

x_data1 = linspace(0, 2 * %pi, 10);
y_data1 = sin(x_data1);

x_data2 = linspace(-1, 1, 10);
y_data2 = 1 ./ (1 + 25 * x_data2 .** 2);

x1 = linspace(0, 2 * %pi, 50);
x2 = linspace(-1, 1, 50);

// a)
d1a = splin(x_data1, y_data1, "not_a_knot");
y1a = interp(x1, x_data1, y_data1, d1a);
plot(x1, y1a);

figure();
d2a = splin(x_data2, y_data2, "not_a_knot");
y2a = interp(x2, x_data2, y_data2, d2a);
plot(x2, y2a);

// b)
figure();
d1b = splin(x_data1, y_data1, "clamped", cos(x_data1));
y1b = interp(x1, x_data1, y_data1, d1b);
plot(x1, y1b);

figure();
d2b = splin(x_data2, y_data2, "clamped");
y2b = interp(x2, x_data2, y_data2, d2b);
plot(x2, y2b);
