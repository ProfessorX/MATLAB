%% Logical operation in Matlab
A = [-2, -1, 0, 0, 1, 2, 3]
L1 = ~(A>1)                             % The elements in A less or
                                        % equal than 1;
L2 = (A>0) & (A<2)                      % The elements that lies
                                        % between 0 and 2.;


% Power of xor
A,B = [0, -1, 1, 0, 1, -2, -3]
C = xor(A, B)                           % Only one element in A/B
                                        % is 0, the output would be
                                        % 1;
