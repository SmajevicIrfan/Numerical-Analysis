function [R]=lmd(A, B)
	R = zeros(size(B, 'r'), size(B, 'c'));
	
	for k=1:size(A, 'c')
		for i=k + 1:size(A, 'r')
			mi = A(i, k) / A(k, k);
			A(i, :) = A(i, :) - mi .* A(k, :);
			B(i, :) = B(i, :) - mi .* B(k, :);
		end
	end

	for k=1:size(B, 'c')
		for i=size(A, 'r'):-1:1
			s = B(i, k); 
			for j=i + 1:size(A, 'c')
				s = s - A(i, j) * R(j, k);
			end
			
			R(i, k) = s / A(i, i);
		end
	end
endfunction

function y = vandermonde(x, n)
	x = x';
    for i = 1 : n
        y(:, i) = x.^(i-1);
    end
endfunction

function [u] = polyfit(x, y, n)
    v = vandermonde(x, n + 1);
    //u = (v \ y')';
	u = lmd(v, y')';
endfunction

function [y] = polyval(u, x, n)
    v = vandermonde(x, n + 1);
    y = (v * u')';
endfunction
