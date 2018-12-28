x_data = linspace(0, 2 * %pi, 10);
d1 = splin(x_data, sin(x_data), "not_a_knot");
d2 = splin(x_data, sin(x_data), "natural");

x = linspace(0, 2 * %pi, 100);
[y1, y1_1, y1_2] = interp(x, x_data, sin(x_data), d1);
[y2, y2_1, y2_2] = interp(x, x_data, sin(x_data), d2);

subplot(221);
plot(x, y1_1);

subplot(222);
plot(x, y2_1);

subplot(223);
plot(x, y1_2);

subplot(224);
plot(x, y2_2);
