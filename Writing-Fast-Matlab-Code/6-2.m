% Apply the median filter of size 5 to signal x
y = zeros((size(x));                    % Preallocate;

for k = 3: length(x)-2
    tmp = sort(x(k-2:k+2));
    y(k) = tmp(3);                      % y(k) =
                                        % median(x(k-2:k+2));
end
