function B = bilateral(A,sd,sr,R)
% The bilateral image denosing filter

B = zeros(size(A));

for i = 1: size(A)
    for j = 1: size(A, 2)
        zsum = 0;
        
        for m = -R: R
            if i+m >= 1 && i+m <= size(A,1)
                for n = -R: R
                    if j+n >= 1 && j+n <= size(A, 2)
                        z = exp(-A(i+m,j+n) - A(i,j)^2/(2*sd^2)) * ...
                            exp(-(m^2 + n^2)/(2*sr^2));
                        zsum = zsum +z;
                        B(i,j) = B(i,j) + z*A(i+m,j+n);
                    end
                end
            end
        end
        
        
        B(i,j) = B(i,j)/zsum;
    end
end
