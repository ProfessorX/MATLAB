%% Multidimensional Integration
% Construct simpson nodes and weights over x
h = (b - a)/(Nx - 1);
x = (a:h:b).';
wx = ones(1,Nx);
wx(2:2:Nx-1) = 4;
wx(3:2:Nx-2) = 2;
wx = w*h/3;


%% Construct Simpson nodes and weights over y
h = (d - c)/(Ny -1);
y = (c:h:d).';
wy = ones(1, Ny);
wy(2:2:Ny-1) = 4;
wy(3:2:Ny-2) = 2;
wy = w*h/3;

%% Combine for two-dimensional integration
[x,y] = meshgrid(x, y);
x = x(:);
y = y(:);
w = wy.' * wx;
w = w(:) * wx;
w = w(:).';
