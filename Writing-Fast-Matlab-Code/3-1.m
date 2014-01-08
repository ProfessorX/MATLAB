%% Array Preallocation
a = 2;
b(2,6) = 1;

%% Without preallocation
% Consider the code below.
a(1) = 1;
b(1) = 0;

for k = 2:8000
    a(k) = 0.99803 * a(k-1) - 0.06279 * b(k-1);
    b(k) = 0.06279 * a(k-1) + 0.99803 * b(k-1);
end


%% With preallocation
a = zeros(1, 8000);
b = zeros(1, 8000);
a(1) = 1;
b(1) = 0;

for k = 2:8000
    a(k) = 0.99803 * a(k-1) - 0.06279 * b(k-1);
    b(k) = 0.06279 * a(k-1) + 0.99803 * b(k-1);
end