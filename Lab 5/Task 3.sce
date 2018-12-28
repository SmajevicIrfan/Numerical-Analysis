function y = f(x)
    y = x(1) ^ 3 + x(2) ^ 3 + x(3) ^ 3;
endfunction

[J, H] = numderivative(f, [1, 2, 3], [], [], "blockmat");
