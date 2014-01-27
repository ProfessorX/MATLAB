%% Haar wavelet
% The input array x must be have length divisible by 2^k

%% Forward transform
y = x(:);
N = length(y);

for k = 1:K
    tmp = y(1:2:N) + y(2:2:N);
    y([1:N/2,N/2+1:N]) = [tmp; y(1:2:N) - 0.5*tmp]/sqrt(2);
    N = N/2;
end


%% Inverse transform
x = y(:);
N = length(x)*pow2(-K);

for k = 1:K
    N = N*2;
    tmp = x(N/2+1:N) + 0.5*x(1:N/2);
    x([1:2:N,2:2:N]) = [tmp; x(1:N/2) - tmp]*sqrt(2);
end
