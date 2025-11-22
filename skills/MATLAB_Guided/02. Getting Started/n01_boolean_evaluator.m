function outboolean = boolean_evaluator(varargin)
% VIDEO01_CREATE_EDIT_AND_OPEN_SCRIPTS - Checks whether N statements are
% equal or not and return the boolean evaluation
% outboolean = video01_Create_edit_and_open_scripts(x, y)
%
%  INPUT: x1,x2,...,xN - the inputs for evaluation
% OUTPUT:   outboolean - The boolean evaluation for all inputs
%
% This is the exercise for '1. Create, edit, and open scripts'

%% Input check
if nargin == 0
    error('At least 1 argument must be passed!')
end

%% Main function
base = varargin{1};
outboolean = true;
for i=2:nargin
    if base ~= varargin{i}
        outboolean = false;
        break
    end
end