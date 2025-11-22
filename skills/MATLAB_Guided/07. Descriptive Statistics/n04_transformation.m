% This is the exercise for '4. Data Transformations (log, sqrt, rank)'

%% Transformation functions
% Data
data = exp(2+randn(10000,1)/2);
[yo, xo] = hist(data, 100);

% Applying log, sqrt and rank functions
datalog = log(data);
datasqrt = sqrt(data);
datarank = tiedrank(data);

[yl, xl] = hist(datalog, 100);
[ys, xs] = hist(datasqrt, 100);
[yr, xr] = hist(datarank, 100);

% Plotting transformations
figure(1), clf

subplot(221)
histogram(data, 100)
title 'Data Distribution'

subplot(222)
plot(xl,yl)
title 'log(y)'

subplot(223)
plot(xs,ys)
title 'sqrt(y)'

subplot(224)
plot(xr, yr)
title 'Data Rank'

%% Applying RSH to transform into normal distribution

% Creating a random distribution
N = 10000;
data2 = [randn(1, N/2)*1 + 2, randn(1, N/2)*0.5 - 3];
data2 = data2(randperm(N));

% Step 1: Ranking
data2_new = tiedrank(data2);

% Step 2: Scaling data between -1:1
data2_new = data2_new / N;
data2_new = data2_new * 2;
data2_new = data2_new - 1;

% Step 3: atanh
data2_new = atanh(data2_new);

% Plotting
figure(2), clf

subplot(221)
plot(data2)
title 'Data'

subplot(222)
histogram(data2,100)
title 'Data Distribution'

subplot(223)
plot(data2_new)
title 'Scaled Distribution'

subplot(224)
histogram(data2_new,100)
title 'New Distribution'