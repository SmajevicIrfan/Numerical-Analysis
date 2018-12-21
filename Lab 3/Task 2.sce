clf();

x_data1 = linspace(0, 2 * %pi, 10);
y_data1 = sin(x_data1);

x_data2 = linspace(-1, 1, 10);
y_data2 = 1 ./ (1 + 25 * x_data2 .** 2);

x1 = linspace(0, 2 * %pi, 50);
x2 = linspace(-1, 1, 50);

// a)
y1a = interp1(x_data1, y_data1, x1, "linear");
plot(x1, y1a);

figure();
y2a = interp1(x_data2, y_data2, x2, "linear");
plot(x2, y2a);

// b)
figure();
y1b = interp1(x_data1, y_data1, x1, "spline");
plot(x1, y1b);

figure();
y2b = interp1(x_data2, y_data2, x2, "spline");
plot(x2, y2b);
