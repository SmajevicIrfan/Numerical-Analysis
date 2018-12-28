x_upper = 0:0.5:%pi;
for i=2:size(x_upper, "c")
    I(i) = intsplin(x_upper(:, 1:i), cos(x_upper(:, 1:i)));
end
