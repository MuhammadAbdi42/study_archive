%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: MATLAB desktop
%    VIDEO: Solve some MATLAB exercises!
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% Exercise 1

% Generate a sequence of odd numbers.
% For each element, add 5 and divide by 2.
% Repeat for a sequence of even numbers.

odd_numbers = ((1:2:9) + 5) / 2
even_numvers = ((2:2:10) + 5) / 2

%% Exercise 2

% delete as many parentheses as possible without changing the results!
% ((9/3)+(4/2))^(( (2)+sqrt(9) ))
exc_2 = (9/3 + 4/2)^(2+sqrt(9))

%% Exercise 3

% convert the sequence [2 4 6] into [-1 0 1]
% 2:2:6
exc_3_a = ((2:2:6) / 2) - 2

% convert the sequence [-1 0 1] into [10 100 1000]
% -1:1
exc_3_b = 10 .^ ((-1:1) + 2)

% convert the sequence 1:9 into [1 1 1 2 2 2 3 3 3]
% 1:9
exc_3_c = ceil((1:9) / 3)

%% done.