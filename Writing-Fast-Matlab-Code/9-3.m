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


% A good higher-order choice is 4th-order Gauss-Lobatto:
N = max(3 * round((N-1)/3),3) + 1;      % Adjust N to the closest
                                        % valid choice;
h = (b-a)/(N-1);
d = (3/sqrt(5) - 1)*h/2;
x = (a:h:b).';
x(2:3:N-2) = x(2:3:N-2) - d;
x(3:3:N-1) = x(3:3:N-1) + d;
w = ones(1,N);
w(4:3:N-2) = 2;
w([2:3:N-2, 3:3:N-1]) = 5;
w = w*h/4;

% Approximately evaluate the integral
I = w * f(x);
