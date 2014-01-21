%% A tiny application of relationship calculation in Matlab
t = -3*pi: pi/10: 3*pi;                 % there is a "0" in array
                                        % t;
y = sin(t) ./ t;                        % There should be a NaN in
                                        % between ;
tt = t + (t==0)*eps;                    % And thereafter the 0
                                        % should be replaced by
                                        % eps;
yy = sin(tt) ./ tt;
subplot(1,2,1);
plot(t,y);
axis([-9,9,-0.5,1.2]);
xlabel('t');
ylabel('y');
title('Incomplete figure');
subplot(1,2,2);
plot(tt,yy);
axis([-9,9,-0.5,1.2]);
xlabel('tt');
ylabel('yy');
title('Complete figure');

