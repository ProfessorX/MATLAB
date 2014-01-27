%% Daubechies 4-Tap wavelet
% filtering is done with symmetric boundary handling

%% Forward transform
U = 0.25 * [2-sqrt(3), -sqrt(3)];
ScaleS = (sqrt(3) - 1)/sqrt(2);
ScaleD = (sqrt(3) + 1)/sqrt(2);

y = x(:);
N = length(y);

for k = 1:K
    N = N/2;
    y1 = y(1:2:2*N);
    y2 = y(2:2:2*N);
    y1 = y1 + filter(U, 1, y2([2:N, max(N-1,1)]), y2(1)*U(2));
    y(1:2*N) = [ScaleS * (y2 - y1([min(2,N), 1:N-1])); ScaleD*y1];
end


%% Inverse transform

    