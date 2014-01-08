% Some inline examples
b = unique(a(:));
b = sort(a(:));
b((1:end-1)') == b((2:end)') = [];


% To repeat a column vector y over the columns n times
A = y(:, ones(1,n));                    % Equivalent to A =
                                        % repmat(y, 1, n);

A = x(ones(m,n), :);                    % Equivalent to A =
                                        % repmat(x, m, 1);

% To repeat a scalar s into m*n matrix
A = s(ones(m,n));                       % Equivalent to A =
                                        % repmat(s, m, n);




%% Comment
% Really nice stuff. We have to be more aware of this.
