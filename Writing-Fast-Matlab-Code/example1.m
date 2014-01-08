function result = example1(Count)

for k = 1: Count
    result(k) = sin(k/50);
    
    if result(k) < -0.9
        result(k) = gammaln(k);
    end
end


%% Testing performance
profile on;
profile clear;
example1(5000);
profile report;


%% Another quick testing method
tic;
example1(5000);
toc;







