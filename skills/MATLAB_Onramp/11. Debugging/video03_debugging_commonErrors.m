%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Debugging
%    VIDEO: Examples of common programming errors
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% types of errors:

% misspelled variables
variable = 10;
variable; % Wrong spelling


% incomplete lines of code
for i=1:10 % No iteration
    disp(i)
end


% invalid indexing
n = 12;
datavec = linspace(1,50,n) .* rand(1,n);
for i=1:n % Wrong index bounds
    newvec(i) = datavec(i)^2 * sign(randn);
end


% dimension mismatch
dat1 = randn(30,3);
dat1(1:10,1:3) = zeros(10,3); % Wrong indexing


% incorrect function inputs/outputs
mat1 = randn(100);
imagesc(mat1) % No need to specify the range


%% The worst, most dangerous, and hardest to find bugs...

% just some loop with i as looping index
n = 4;
d = zeros(n,1);
for i=1:n
    d(i,1) = i^2 - log(i); % d needs two dimensions
end

% create complex sine wave
fs = 1000;
t  = -2:1/fs:2; 
s1 = exp(2*1i*pi*t); % i = sqrt(-1) can be acceseed with 1i

% figure(1), clf
% subplot(211)
% plot(t,real(s1),'linew',3)
% xlabel('Time (s)'), ylabel('Amplitude')
% title('First try (wrong!)')
% 
% % i should be sqrt(-1)
% clear i
% s2 = exp(2*i*pi*t);
% % hint: better would be to use 1i instead of i
% s2 = exp(2*1i*pi*t);
% 
% subplot(212)
% plot(t,real(s2),'linew',3)
% xlabel('Time (s)'), ylabel('Amplitude')
% title('Corrected')


%% two additional examples

% intention is to do element-wise multiplication
n = 12;
datavec = linspace(1,50,n) .* rand(1,n); % dimensions should be inverted
% The above line is version-dependent:
%   MATLAB 2016 and earlier will give an error.
%   MATLAB 2017 will produce the outer product.
%     Both versions give the "wrong" result, though.



% awkward matrix indexing
randmat = randn(5,4,7,2,5,7);

% legal but difficult to interpret (use sub2ind):
randmat(7000)

% legal but a terrible idea
randmat(2,4,2,2:57)

% best approach (N-D matrix, N-1 commas!):
randmat(1,3,6,2,2,3)


%% done.
