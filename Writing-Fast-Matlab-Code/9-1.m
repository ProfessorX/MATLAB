% If an application requires approximating an integral whose
% integrand can be successfully vectorized, using nonadaptive
% quadature may improve speed.

for n = -20:20                          % Compute Fourier series
                                        % coefficients 
    c(n + 21) = quad(@(x)(exp(sin(x).^6).* exp(-1i*x*n), 0, pi, 1e- ...
                          4));
end


