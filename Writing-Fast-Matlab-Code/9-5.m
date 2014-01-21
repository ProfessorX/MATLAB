%% Uniformly randomly sample points (x,y) in Omega space
x = 4*rand(N,1) - 2;
y = 4*rand(N,1) - 2;

% Restrict the points to region W
i = (cos(2*sqrt(x.^2 + y.^2)).*x<=y & x.^2+y.^2<=4);
x = x(i);
y = y(i);


% Approximately evaluate the integrals
area = 4*4;                             % The area of rectangle
                                        % Omega;
M = (area/N) * length(x);
Mx = (area/N) * sum(x);
My = (area/N) * sum(y);


% More generally, if W is a two-dimensional region contained in the
% rectangle defined by a<=x<=b and c<=y<=d, the following code
% approximate double integration
x = a + (b-a)*rand(N,1);
y = c + (d-c)*rand(N,1);
i = logical(indicatorW(x,y));
x = x(i);
y = y(i);

area = (b-a)*(d-c);
I = (area/N) * sum(f(x,y));             % Approximately evaluate
                                        % the integral;

% indicatorW(x,y) is the indicator function xw(x,y) for region W.


















%% Comment
% As stated, all those source codes are from a manual named
% "Writing Fast Matlab Code".