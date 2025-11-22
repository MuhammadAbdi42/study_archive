% This is the exercise for '3. Unsolved Sort Data up and down'

%% Constants
NUMBERS = 5;
VARIANCE = 10;

%% Generating random numbers
y = rand(1,NUMBERS);

%% Recaliberating numbers
y = y - mean(y);
y = sqrt(10)/sqrt(var(y)) * y;

%% Rounding numbers
y = round(y);
disp(y)