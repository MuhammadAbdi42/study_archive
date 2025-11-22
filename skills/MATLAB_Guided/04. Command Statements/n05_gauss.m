% This is the exercise for '5. Display the day of 1 January'

%% Defining the gauss function
gauss_func = @(y) mod(1+5*mod(y-1, 4)+4*mod(y-1, 100)+6*mod(y-1, 400), 7);

%% Defining days names
days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

%% Finding the day
input_year = input('Input the year: ');
the_day = gauss_func(input_year);

%% Finidng past or future
this_year = datetime("now").Year;
if input_year <= this_year
    article = 'was';
else
    article = 'will be';
end

%% Returning the result
fprintf('1 January %g %s a %s\n', input_year, article, days(the_day+1))
