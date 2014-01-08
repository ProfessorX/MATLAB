%% Vectorization
% To vectorize the distance computation, replace the for loop with
% vector operations.
function d = minDistance_fast(x, y, z)

d = sqrt(x.^2 + y.^2 + z.^2);  % Compute the distance ;
d = min(d)  % Get the minimum distance;

%% Further improvement
% The above is equivalent to ...
d = sqrt(min(x.^2 + y.^2 + z.^2));


