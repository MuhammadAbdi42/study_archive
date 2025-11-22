% This is the exercise for '2. Unsolved Compare two while Loops'

%% Loop A
i = 0;
while i<5
    i = i + 1;
    fprintf('%g ', i);
end
fprintf('\n')

%% Loop B
i = 0;
while i<5
    fprintf('%g ', i);
    i = i + 1;
end
fprintf('\n')

%% Answer:
% Loop A prints i after increment: [1 2 3 4 5]
% Loop B prints i before increment: [0 1 2 3 4]

