%% Dynamic array in MATLAB
a = zeros(1, 10000);  % Yet another pretty naive preallocation
count = 0;

% Let the loop begin
for k = 1:10000
    v = exp(rand*rand);
    
    if v > 0.5  % this is to let the array size vary
        count = count + i;
        a(count) = v;
    end
end

a = a(1: count);  % Trim extra zeros from the results

        