%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: Exercise: Find and fix the bugs!
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% Set 1

plot(randn(10,3))
xlabel('time')
ylabel('amplitude') % Wrong spelling

%% Set 2

plot( 3 )
set(gca,'xlim',[-1 4]) % Not specified the axis

%% Set 3

data = randn(10,3,2);
plot(data(:,:)) % Since the intention was not clear, all lines were plotted

%% done.
