% Noncasual filtering and other boundary extensions 
y = filter(b, 1, x, padLeft*b(2));


% y(n) = b1x(n+1) + b2x(n)
y = filter(b, 1, [x(2:end), padRight], x(1)*b(2));
