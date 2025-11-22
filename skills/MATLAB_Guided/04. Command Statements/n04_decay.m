% This is the exercise for '4. Random Count-Down Timer (Poisson-like)'

%% Constants
THRESHOLD = exp(-10);
REPEATS = 1000;
START = 1;
MAX_ITERATION = 30;

%% Decay
decay_amounts = nan(REPEATS, MAX_ITERATION);
for repi=1:REPEATS
    % Setting Intitial amounts for each repeat
    current = START;
    iterations = 0;
    
    % Computing decay
    while current > THRESHOLD && iterations < MAX_ITERATION  
        iterations = iterations + 1;
        decay_amounts(repi,iterations) = current;
        current = current * rand;
    end
end

%% Averaging
decay_avg = zeros(1, MAX_ITERATION);
for i=1:MAX_ITERATION

    sum_of_amounts = 0;
    count_of_valids = 0;

    for j=1:REPEATS
        if isfinite(decay_amounts(j,i))
            sum_of_amounts = sum_of_amounts + decay_amounts(j,i);
            count_of_valids = count_of_valids + 1;
        end
    end
    
    decay_avg(i) = sum_of_amounts/count_of_valids;
end


%% Plot
figure, clf
plot(0:length(decay_avg)-1,decay_avg, 'k-s')
title(['Decay Plot (' num2str(REPEATS) ' repeats)'])
xlabel 'Iterations'
ylabel 'Amount'
axis square
grid on