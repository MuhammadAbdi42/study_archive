function outvec = plotrandom(varargin)
% PLOTRANDOM - generates and plots sorted random numbers
% outvec = plotrandom(n, plottoggle)
%
% This function returns n random generated numbers, if n is not provided
% the default amount will be generated, also if plottoggle is set to true,
% it will plot the random numbers
%
%   INPUT:          n - Number of random generated numbers
%                     - (default = 30)
%          plottoggle - false for no plot, true for a plot
%                     - (default = false)
%  OUTPUT:     outvec - sorted vector of random generated numbers

%% Input checks
% set default values if none inputted
if nargin == 0
    n = 30;
    plottoggle = false;
elseif nargin == 1
    n = varargin{1};
    plottoggle = false;
elseif nargin == 2
    if isempty(varargin{1})
        n = 30;
    else
        n = varargin{1};
    end
    plottoggle = varargin{2};
else
    error('Too many arguments!')
end
% n must be numeric and scalar
if ~isnumeric(n) || length(n) > 1
    error('Input (n) must be numeric and scalar!')
end
% n must be an integer
if mod(n, 1) ~= 0
    error('Input (n) must be an integer!')
end
% n must be at least 1
if n < 1
    error('Input (n) must be at least 1!')
end
% plottoggle must be logical
if ~islogical(plottoggle)
    error('Input (plottoggle) must be logical!')
end

%% Generate sorted random numbers
outvec = sort(randn(n, 1));

%% Generate figure if requested
if plottoggle
    figure(), clf
    plot(outvec, 'ks-', 'LineWidth', 2, 'MarkerFaceColor', 'r')
    xlabel('Index')
    ylabel('Random numbers')
    title(['PLOTRANDOM(', num2str(n), ')'])
    set(gca, 'XLim', [0, n + 1])
end
