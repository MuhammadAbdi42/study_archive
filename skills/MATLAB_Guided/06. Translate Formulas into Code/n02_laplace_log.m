% This is the exercise for '2. Laplace and log-normal Distributions'

%% Functions
laplace_func = @(lambda, x) 0.5*lambda*exp(-lambda*abs(x));
log_normal_func = @(center, width, x) exp(-(log(x)-center).^2)./(width*x*sqrt(2*pi));

%% CONSTANTS
LAPLACE_LOWERBOUND = -5;
LAPLACE_HIGHERBOUND = 5;
LAPLACE_INTERVAL = 0.01;
LAPLACE_LAMBDA = 3;

LOG_LOWERBOUND = 0.01; % The interval must be positive and don't contain 0
LOG_HIGHERBOUND = 5; 
LOG_INTERVAL = 0.01;
LOG_CENTER = 0;
LOG_WIDTH = 5;

%% Computing ticks arrays
laplace_ticks = LAPLACE_LOWERBOUND:LAPLACE_INTERVAL:LAPLACE_HIGHERBOUND;
log_ticks = LOG_LOWERBOUND:LOG_INTERVAL:LOG_HIGHERBOUND;

%% Computing functions over ticks
laplace_values = laplace_func(LAPLACE_LAMBDA,laplace_ticks);
log_values = log_normal_func(LOG_CENTER,LOG_WIDTH,log_ticks);

% Normalizing
laplace_values = laplace_values ./ sum(laplace_values);
log_values = log_values ./ sum(log_values);

%% Plotting
figure, clf

% Laplace probability function
subplot(221)
plot(laplace_ticks,laplace_values)
title 'Laplace Probability Function'
ylabel 'p(f(x))'
xlabel 'x'
axis tight

% Log-normal probability function
subplot(222)
plot(log_ticks,log_values)
title 'Log-normal Probability Function'
ylabel 'p(f(x))'
xlabel 'x'
axis tight

% Laplace PDF
subplot(223)
plot(laplace_ticks,cumsum(laplace_values))
title 'Laplace PDF'
ylabel 'pdf(f(x))'
xlabel 'x'
axis tight

% Log-normal probability function
subplot(224)
plot(log_ticks,cumsum(log_values))
title 'Log-normal PDF'
ylabel 'pdf(f(x))'
xlabel 'x'
axis tight
