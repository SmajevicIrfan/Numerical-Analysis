clf();
x = linspace(-8, 8, 100);
[X,Y] = meshgrid(x);

surf(x, x, X .** 2 + Y .** 2);
