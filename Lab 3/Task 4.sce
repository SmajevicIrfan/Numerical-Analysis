clf();

x_data1 = linspace(0, 2 * %pi, 10);
y_data1 = sin(x_data1);

x_data2 = linspace(-1, 1, 10);
y_data2 = 1 ./ (1 + 25 * x_data2 .** 2);

x1 = linspace(-1 * %pi, 3 * %pi, 100);
x2 = linspace(-2, 2, 100);

d1 = splin(x_data1, y_data1, "not_a_knot");
d2 = splin(x_data2, y_data2, "not_a_knot");

// a)
y1a = interp(x1, x_data1, y_data1, d1, "by_zero");
plot(x1, y1a);

figure();
y2a = interp(x2, x_data2, y_data2, d2, "by_zero");
plot(x2, y2a);

// b)
figure();
y1b = interp(x1, x_data1, y_data1, d1, "by_nan");
plot(x1, y1b);

figure();
y2b = interp(x2, x_data2, y_data2, d2, "by_nan");
plot(x2, y2b);

// c)
figure();
y1c = interp(x1, x_data1, y_data1, d1, "C0");
plot(x1, y1c);

figure();
y2c = interp(x2, x_data2, y_data2, d2, "C0");
plot(x2, y2c);

// d)
figure();
y1d = interp(x1, x_data1, y_data1, d1, "natural");
plot(x1, y1d);

figure();
y2d = interp(x2, x_data2, y_data2, d2, "natural");
plot(x2, y2d);

// e)
figure();
y1e = interp(x1, x_data1, y_data1, d1, "linear");
plot(x1, y1e);

figure();
y2e = interp(x2, x_data2, y_data2, d2, "linear");
plot(x2, y2e);

// f)
figure();
y1f = interp(x1, x_data1, y_data1, d1, "periodic");
plot(x1, y1f);

figure();
y2f = interp(x2, x_data2, y_data2, d2, "periodic");
plot(x2, y2f);
