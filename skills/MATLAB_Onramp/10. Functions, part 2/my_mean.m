function outnum = my_mean(x)
% MY_MEAN - Computes the mean of elements in a vector
% outnum = my_mean(x)
%
%   INPUT: x - a vector, should at least have 5 elements
%  OUTPUT: outnum - the arithmetic mean of the elements in x

%% Input check
if ~isnumeric(x)
    error('Input must be numeric!')
end
if ~isvector(x)
    error('Input must be a vector!')
end
if numel(x) < 5
    error('Input vector must at least have 5 elements!')
end

%% Main function
outnum = sum(x) / numel(x);