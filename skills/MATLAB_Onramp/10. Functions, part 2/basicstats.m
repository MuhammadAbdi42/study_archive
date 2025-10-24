function stats = basicstats(invar)
% stats = basicstats(invar)
%
% This function computes the mean, sum and standard deviation of an input numeric vector.
%
%   INPUT: invar - input vector, must be numeric; at least 3 elements long
%  OUTPUT: stats - a 3-element vector containing [mean sum stdev]

%% Input checks
if ~isnumeric(invar)
    error('Input must be numeric!')
end
if numel(invar) < 3
    error('Input must have at least 3 elements!')
end
if ~isvector(invar)
    error('Input must be a vector!')
end

%% Compute the stats
themean = theMean(invar);
thesum = theSum(invar);
thestdev = theStdev(invar);

%% Assigning output
stats = [themean, thesum, thestdev];

%% Helper fucntions
function y = theMean(x)
y = mean(x);
function y = theSum(x)
y = sum(x);
function y = theStdev(x)
y = std(x);
