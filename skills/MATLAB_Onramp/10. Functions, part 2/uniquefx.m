function ufvals = uniquefx(x, varargin)
% UNIQUEFX(x[,sotfF]) - returns unique values in a collection and their frequencies
% ufvals = uniquefx(x, varargin)
%
%    INPUT:      x - a vector or matrix (matrices are vectorized)
%            sortF - (boolean) optional sort by frequency
%                  - (default = false)
%   OUTPUT: ufvals - N*2 matrix unique values and their frequencies
%  EXAMPLE: >> uniquefx([1 2 1 3 1 3 2 2 2 3 1 2 2 2], true)
%           >> ans =
%
%                   3     3
%                   1     4
%                   2     7

%% Input check
% input must be numeric
if ~isnumeric(x)
    error('Input must be numeric!')
end
% input must be a vector, otherwise it will be vectorized
if ~isvector(x)
    warning('Vectorizing the input.')
    x = x(:);
end
% check if it's going to be sorted
if nargin == 1
    sortF = false;
elseif nargin == 2
    sortF = varargin{1};
elseif nargin > 2
    error('Too many arguments!')
end

%% Main function
u = unique(x);
ufvals = zeros(length(u), 2);
for ui = 1:length(u)
    ufvals(ui, 1) = u(ui);
    ufvals(ui, 2) = sum(u(ui) == x);
end

if sortF
    ufvals = sortrows(ufvals, 2);
end
