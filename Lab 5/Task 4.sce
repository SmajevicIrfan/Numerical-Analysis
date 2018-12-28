function y = fun(x, a, b, c)
    y = (x + a) ^ c + b;
endfunction

[grad] = numderivative(list(fun, 3, 4, 2), 1, [], [], "blockmat");
