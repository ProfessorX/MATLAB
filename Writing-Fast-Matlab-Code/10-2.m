%% Locating zero-crossing and extrema
i = find(diff(sign(x)));                % the kth zero-crossing
                                        % between x(i(k)) and
                                        % x(i(k+1)) ;

i = find(diff(sign(x)));
i = i - x(i)./(x(i+1) - x(i));          % linear interpolation;

iMax = find(sign(x(2:end-1)-x(1:end-2)) + sign(x(2:end-1)-x(3:end)) ...
            > 0) + 1;
iMin = find(sign(x(2:end-1)-x(1:end-2)) + sign(x(2:end-1)-x(3:end)) ...
            < 0) + 1;
