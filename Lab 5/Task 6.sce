function y = myfun(x)
    y = x * sin(30 * x) / sqrt(1 - (x / (2 * %pi))^2);
endfunction

exact = -2.5432596188;
I = intg(0, 2 * %pi, myfun);
err = abs(I - exact);
