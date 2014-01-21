%% One-dimensional integration
% It can be approximated by composite Simpson's rule with:
% a and b are lower and upper bound of integration respectively

h = (b-1)/(N-1);
x = (a:h:b).';
w = ones(1, N);
w(2:2:N-1) = 4;
w(3:2:N-2) = 2;
w = w*h/3;

I = w * f(x);                           % Approximately evaluate
                                        % the integral;


% A good high 
