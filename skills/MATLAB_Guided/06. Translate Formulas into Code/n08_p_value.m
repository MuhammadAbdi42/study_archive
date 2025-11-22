% This is the exercise for '8. Circular p-value and its Approximation'

%% Functions 
func_acc = @(n,z) exp( sqrt( (1)+ (4*n) + 4*(n^2-(n*z)^2) ) - (1+2*n) );
func_app = @(n,z) exp(-n*(z^2));

%% CONSTANTS
N = 1:1:100;
Z = 0:0.001:1;

%% Computing p-values
[p_acc, p_app, diff] = deal(zeros(length(N),length(Z)));
for ni=1:length(N)
    for zi=1:length(Z)
        p_acc(ni,zi) = func_acc(N(ni),Z(zi));
        p_app(ni,zi) = func_app(N(ni),Z(zi));
        diff(ni,zi) = p_acc(ni,zi) - p_app(ni,zi);
    end
end

%% Plotting
figure(1), clf
colormap jet

subplot(131)
contourf(Z,N,p_acc,40,'EdgeColor','none')
axis square
colorbar
xlabel 'Z'
ylabel 'N'
title 'Full Formula'

subplot(132)
contourf(Z,N,p_app,40,'EdgeColor','none')
axis square
colorbar
xlabel 'Z'
ylabel 'N'
title 'Approximation'

subplot(133)
contourf(Z,N,diff, 40,'EdgeColor','none')
axis square
colorbar
xlabel 'Z'
ylabel 'N'
title 'Difference'