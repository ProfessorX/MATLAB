% Nodes
N = 199;
h = pi/(N-1);
x = (0: h: pi).';

% Weights
w = ones(1, N);
w(2:2:N-1) = 4;
w(3:2:N-2) = 2;
w = w*h/3;

for n = -20:20
    c(n+21) = w * (exp(sin(x).^6) .* exp(-1i*x*n));
end


%% New "idea"
% For this example, quadv can be used on a multi-valued integrand
% with similar accuracy and speed.

n = -20:20;
c = quadv(@(x)exp(sin(x).^6) .* exp(-1i.*x.*n), 0, pi, 1e-4);
