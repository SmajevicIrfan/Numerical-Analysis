function [R]=lmd(A, B)
    R = zeros(size(B, 'r'), size(B, 'c'));
    
    for k=1:size(A, 'r')
        for i=k + 1:size(A, 'r')
            mi = A(i, k) / A(k, k);
            for j=k + 1:size(A, 'c')
                A(i, j) = A(i, j) - mi * A(k, j);
            end
            for j=1:size(B, 'c')
                B(i, j) = B(i, j) - mi * B(k, j);
            end
        end
    end
    
    for k=1:size(B, 'c')
        for i=size(A, 'r'):-1:1
            s = B(i, k)
            for j=i + 1:size(A, 'c')
                s = s - A(i, j) * R(j, k);
            end
            
            R(i, k) = s / A(i, i)
        end
    end
endfunction

A = [2, 1, 3; 2, 6, 8; 6, 8, 18];
B = [1; 3; 5];

R1 = A \ B;
R2 = lmd(A, B);
