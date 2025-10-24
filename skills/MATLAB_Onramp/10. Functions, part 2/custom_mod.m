function outvec = custom_mod(n, k)
% OUTVEC - Return a vector in which every element from 1 to n, corresponds
% to its remainder over k, if the remainder is 0, k will be returned
% outvec = custom_mod(n, k)
%
%   INPUT:      n - The upper bound of the numbers
%               k - The divisor
%  OUTPUT: outvec - The vector of corresponding remainders
%                 - In case of 0, k will be returned

%% Input checks
if ~isnumeric(n) || ~isnumeric(k)
    error('The inputs must be numeric')
end
if ~isscalar(n) || ~isscalar(k)
    error('The inputs must be scalar')
end
if n < 1 || k < 1
    error('The inputs must be greater than 0')
end

%% Main function
outvec = mod(1:n, -k) + k;