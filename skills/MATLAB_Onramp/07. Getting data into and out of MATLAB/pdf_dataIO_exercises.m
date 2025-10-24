%% Exercise 1
mat = randn(2, 3);
dlmwrite('test1.txt', mat ,' ');
dlmwrite('test2.txt','mat',' ');
% The first one outputs the desired results
% the second one takes the 'mat' char array as the input

%% Exercise 2
random_numbers = csvread("exc2.txt");
csvwrite("exc2_copy.txt", random_numbers)

%% Exercise 3
% Only the first one would work, can't use ; in function arguments

%% Exercise 4
save([ dataoutname '.mat' ],'a','b') % File name should be char vector
save([ dataoutname '.mat' ],varmat) % File name should be char vector
dlmwrite('file.txt', datavar, '\t') % No variable or append
xlswrite('file.xls', data4me) % Variable can't be char vector
data = load('myData.mat'); % File path must be char vector
data = load(['myData' num2str(3) '.mat']); % File path must be char vector

%% Exercise 5
0:.1:(2>1) %  0    0.1000    0.2000    0.3000    0.4000    0.5000    0.6000    0.7000    0.8000    0.9000    1.0000
(0:.1:2)>1 %  0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1
(0:.1):2>1 %  0   0   1