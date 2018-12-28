function y = vandermonde(x, n)
	x = x';
    for i = 1 : n
        y(:, i) = x.^(i-1);
    end
endfunction

function [u] = polyfit(x, y, n)
    v = vandermonde(x, n + 1);
    u = (pinv(v) * y')';
endfunction

function [y] = polyval(u, x, n)
    v = vandermonde(x, n + 1);
    y = (v * u')';
endfunction
