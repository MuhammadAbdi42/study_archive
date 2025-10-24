%% Exercise 1
function thematrix = randmatrix2(m, n)
if ~isnumeric(m) || ~isnumeric(n)
    error('Inputes should be numeric!')
elseif mod(m, 1) ~= 0 || mod(n, 1) ~= 0
    error('Inputs must be integers!')
elseif m < 1 || m > 30 || n < 1 || n > 30
    error('Inputs must be between 1 and 30!')
end

multiplier = 0;
while multiplier < 0.1
    multiplier = rand();
end

thematrix = randn(m, n) * multiplier;
disp(['The multiplier: ', num2str(multiplier)])
disp('The random matrix: ')
disp(thematrix)
