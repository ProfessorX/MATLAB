function c = polyint(x,y)
% POLYINT - Give a set of points and functions values x and y,
% compute interpolating polynomial. 
%   

% Make sure x and y are both column vectors
x = x(:);
y = y(:);
% n = Number of points
n = length(x);

% Construct the matrix on the left-hand-side
% Make an n by n matrix of exponents
xMatrix = repmat(x, 1, n); % Make another n by n
powMatrix = repmat(n-1:-1:0, n, 1);  % matrix of exponents;   
                                       
A = xMatrix .^ powMatrix;

c = A\y;



