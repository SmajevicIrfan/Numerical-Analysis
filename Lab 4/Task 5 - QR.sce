function y = vandermonde(x, n)
	x = x';
    for i = 1 : n
        y(:, i) = x.^(i-1);
    end
endfunction

function [u] = polyfit(x, y, n)
    v = vandermonde(x, n + 1);
    [Q, R, E] = qr(v, "E");
    u = (E * (inv(R) * (Q' * y')))';
endfunction

function [y] = polyval(u, x, n)
    v = vandermonde(x, n + 1);
    y = (v * u')';
endfunction

[u] = polyfit([-1, 0, 1, 2, 3], [1, 0, 1, 4, 9], 2)
