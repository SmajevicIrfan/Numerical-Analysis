function y = g(z)
    y = z ^ (3 + %pi * %i);
endfunction

I = intc(%i, 4 - %i, g);
