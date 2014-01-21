%% Moving-average filter
y = filter(ones(N,1)/N, 1, x);

% for large N, it is faster to use
y = cumsum(x)/N;
y(N+1:end) = y(N+1:end) - y(1:end-N);
