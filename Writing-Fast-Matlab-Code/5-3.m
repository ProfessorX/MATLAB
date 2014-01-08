%% Vector Normalization
vMag = sqrt(sum(v.^2));
v = v./vMag(ones(1,size(v,1)), :);


%% Removing elements
% Find bad elements in x
i = find(isnan(x) | isinf(x));
% delete them
x(i) = [];

% Alternatively
% Find elements that are "not" NaN and not infinite
i = find(~isnan(x) & ~isinf(x));
% keep those elements
x = x(i);


% Using logical indexing, that's more straightforward. 
x(isnan(x) | isinf(x)) = [];  % delete bad elements;

% or
x = x(~isnan(x) & ~isinf(x));  % keep good elements
