x_upper = 0:0.5:%pi;
for i=1:size(x_upper, "c")
    I(i) = inttrap(x_upper(:, 1:i), cos(x_upper(:, 1:i)));
end
