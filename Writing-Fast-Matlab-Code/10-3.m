%% FFT-based convolution
y = ifft(fft(b,length(x)).*fft(x));

% for fft-based zero-padded convolution, equivalent to y =
% filter(b,1,x)
N = length(x) + length(b) -1;
y = ifft(fft(b,N).*fft(x,N));
y = y(1:length(x));
