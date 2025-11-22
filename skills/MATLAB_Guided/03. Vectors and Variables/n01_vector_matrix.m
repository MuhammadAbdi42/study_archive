% This is the exercise for '1. Create Vectors and Matrices'

% Row vector using []
vectR1 = [1 2 3];

% Column vector using [;]
vectC1 = [1;2;3];

% Column vector by transposing a row vector
vectC2 = [1 2 3]';

% 2 * 3 matrix
mat1 = [1 2 3; 4 5 6];

% 2 * 3 matrix by transpose
mat2 = [1 4; 2 5; 3 6]';

% Row vector of ones
vectR3 = ones(1,10);

% Column vector of 0.25s
vectC3 = ones(10,1) * 0.25;

% Matrix of random numbers
mat3 = rand(3,4);

% Tranpose the last matrix
mat4 = mat3';