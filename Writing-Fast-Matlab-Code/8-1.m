% Use PCG to solve Ax=b
tol = 1e-6;                             % Convergence tolerance;
maxit = 20;                             % maximum number of
                                        % iterations;
x = x0;                                 % set x to initial guess,
                                        % if no guess is available,
                                        % use x0 = 0;

% Compute w = Ax
r = b - w;                              % r = residual vector;

% Set p = 4, or if using a preconditioner, p = M^(-1)r
d = r' * p;

for iter = 1: maxit
    if norm(p) < tol
        break;                          % PCG converged
                                        % successfully
    end
    
    % Compute w = Ap
    alpha = e/(p' * w);
    x = x + alpha*p;
    r = r - alpha * w;
    
    % Set w=r, or if using a preconditioner  
    if norm(w) < tol && norm(t) < tol
        break                           % PCG converged
                                        % successfully (small
                                        % residual) 
    end
    
    dlast = d;
    d = r' * w;
    p = w + (d/dlast) * p;
end

% Use PCG to solve Ax=b
tol = 1e-6;                             % Convergence tolerance ;
maxit = 20;                             % maximum number of
                                        % itrations;
x = x0;                                 % Set x to initial
                                        % guess. If no guess is
                                        % available, use x0=0;

% Compute w = Ax
r = b - w;

for iter = 1:maxit
    if norm(p) < tol
        break;                          % PCG converged
                                        % successfully (small
                                        % change in x)
    end
    
    % Compute w = Ap
    
    alpha = e/(p'*w);
    x = x + alpha*p;
    r = r - alpha*w;
    
    % Set w=r, or if using a preconditioner, w=M^(-1)r
    
    if norm(w) < tol && norm(r) < tol
        break
    end
    
    dlast = d;
    d = r'*w;
    p = w + (d/dlast)*p;
end
