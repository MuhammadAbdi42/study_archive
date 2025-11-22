% This is the exercise for '1. Compute Measures of Central Tendency' and
% '2. Compute Variance and Standard Deviation'

%% Distribution function
y = round(exp(2+randn(101,1)/2));

%% Mean
themean = sum(y) / length(y);

%% Median
sorted_y = sort(y);
themedian = sorted_y(round(length(sorted_y)/2));

%% Mode
unique_data = unique(y);
themode_ind = 0; mode_freq = 0;
for i=1:length(unique_data)
    freq = sum(y == unique_data(i));
    if freq > mode_freq
        mode_freq = freq;
        themode_ind = unique(i);
    end
end

themode = unique_data(themode_ind);

%% Variance
thevar = sum((y - themean).^2) / (length(y) - 1);
thestd = sqrt(thevar);

fprintf('Variance = %g\nstd = %g\n',thevar,thestd)

%% Plotting
figure(1), clf
hold on

histogram(y)
plot([1 1]*themode,get(gca,'YLim'),'r--','LineWidth',2)
plot([1 1]*themean,get(gca,'YLim'),'k--','LineWidth',2)
plot([1 1]*themedian,get(gca,'YLim'),'g--','LineWidth',2)

legend('Frequencies', 'Mode', 'Mean', 'Median');

title 'Centeral Tendencies of y'
ylabel 'y'
xlabel 'x'

