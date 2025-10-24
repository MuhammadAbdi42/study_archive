%% Exercise 1
thevector = randn(1, 15);

for i = 1:length(thevector)
    switch i
        case 1
            suffix = 'st';
        case 2
            suffix = 'nd';
        case 3
            suffix = 'rd';
        otherwise
            suffix = 'th';
    end

    if thevector(i) > 1
        disp(['The ' num2str(i) suffix ' is ' num2str(thevector(i)) ' and is greater than 1'])
    else
        disp(['The ' num2str(i) suffix ' is ' num2str(thevector(i)) ' and is not greater than 1'])
    end
end 

%% Exercise 2
number_vector = .1:.2:2;

for i=1:length(number_vector)
    res(i) = i*4+log(number_vector(i));
end

%% Exercise 3
% When 0 <= v <= 1

%% Exercise 4
% They are the same!

%% Exercise 5
% Index 7 is out of the index range of vec

%% Exercise 6
% varname == 4; is an evaluation expression and sice varname is not defined
% it throws an error

%% Exercise 7
for i=1:6
    varA(i) = i*43;
end

%% Exrcise 8
% A) i=3; i=rand(i); 
% This one will turn i into a 3*3 uniformly distributed random numbers
% matrix

% B) i=[3 2]; r=rand(i); r(3,3)
% This one throws turn r into a 3*2 uniformly distributed random numbers
% matrix but since there is not (3, 3) index in it, it will throw an error

% C) i=[3 2]; i(1), i(2)
% This will make a 1*2 vector [3 2] and access the first and second values
% in it

% i=3; i(1), i(2)
% i is a numeric value not a vector, so it can't be accessed through
% indexes

%% Exercise 9
nums = round(logspace(1,3,15));
numlogs = log(nums);

%% Exercise 10
% [qt - qm] This one will make a 1*1 vector with (qt-qm)
% [qt -qm] This one will make a 1*2 vector with qt and -qm
% [qt-qm] This one will make a 1*1 vector with (qt-qm)

%% Exercise 11
j=1;
toggle = true;
while toggle
    disp([ 'Iteration ' num2str(j) ])
    j = j + 1;
    if j>10
        toggle=false;
    end
end