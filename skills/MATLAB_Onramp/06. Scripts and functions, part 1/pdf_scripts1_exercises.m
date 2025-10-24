%% Exercise 1
% in randmatrix.m file

%% Exercise 2
% in minwithsort.m file

%% Exercise 3
% in minabswithsort.m

%% Exercise 4
r = 3;
c = 4;

thematrix = round(rand(r, c) * 10)
numel(thematrix)

%% Exercise 5
% in medianfunc.m file

%% Exercise 6
% N = 14;
% randnums = rand(N,2); -> The output would be a 14 * 2 random valued array
% rn_size = size(randnums); -> The output would be a row vector [14 2]
% so zeromat = zeros(rn_size(1),1); would be:
zeromat = zeros(14,1);

%% Exercise 7
mat = ones(round(randn())); % () after randn function, also added round becuase ones() input must be an integer
name = [ 'My name ' num2str(4) ' today is ' "Mudd" ]; % Converting 4 into string
name = ['Sometimes I like the number ' num2str(7)]; % Added [] to concatenate and converted 7 into string
asdf = [1:.2:4 3:-2/3:-1]; asdf(2) % The vector index can't be decimal

%% Exercise 8
var = linspace(1,19,13) .^ 2 * 3;
mvar = mean(var);
disp(['The mean is ' num2str(mvar)]);
result = 4 - (6/7*2) ^ mean(randn(10,1));

%% Exercise 9
% mean2 is a bulit-in function
% mmean, nanmean, fftmean and meen are not functions