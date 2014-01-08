for k = 1: NumTrials
    r = rand;
    x(k) = runsim(r);
end


hist(x);  % Plot histogram of simulation output
