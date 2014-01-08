%% In-place computation
x = 5 * sqrt(x.^2 + 1);

% Another implementation
x = myfun(x);

function x = myfun(x)
x = 5 * sqrt(x.^2 + 1);
return
