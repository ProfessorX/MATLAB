%% Piecewise functions in MATLAB
function y = 5-4(x)
y = ones(size(x));  % set y to all ones, sinc(0) = 1;
i = find(x ~= 0);  % Find nonzero values;
y(i) = sin(x(i)) ./ z(i);  % Compute sinc() where x ~= 0;


%% Concise
y = (sin(x) + (x==0)./(x+(x==0)));
