% Vector subscript references extend intuitively in higher
% dimensions

% If any elements in the destination reference are repeated, the
% source element with the greater index dominates.
A = zeros(2);
A([1,2], [2,2]) = [1,2;3,4];

%% Logical Indexing
A(mask);
A(abs(A) < 1e-3) = 0;

A(logical(eye(size(A))))