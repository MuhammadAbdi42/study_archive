% This is the exercise for '7. Uncertainty in Future Money (using patch)'

%% CONSTANTS
START_MONEY = 1e5;
INFLATION_RATES = [0.01 0.02 0.03];
INTERVAL = 25;

START_YEAR = datetime("now").Year;
END_YEAR = START_YEAR + INTERVAL;

%% Computing
money = zeros(length(INFLATION_RATES), END_YEAR - START_YEAR + 1);
for inflationi = 1:length(INFLATION_RATES)
    for yeari = 1:(END_YEAR - START_YEAR + 1)
        if yeari == 1
            money(inflationi, yeari) = START_MONEY;
        else
            money(inflationi, yeari) = money(inflationi, yeari - 1) * 10^(-INFLATION_RATES(inflationi));
        end
    end
end

%% Plotting
figure(1), clf, hold on
title Inflation Rates

% Drawing Patches
colors = ['g' 'r'];
for inflationi=1:length(INFLATION_RATES)-1
    x = [(START_YEAR:1:END_YEAR) (END_YEAR:-1:START_YEAR)];
    y = [money(inflationi,:) fliplr(money(inflationi+1, :))];
    patch(x,y,colors(inflationi),'facealpha', 0.2, 'linestyle', 'none')
end

% Drawing lines
colors = ['g' 'k' 'r'];
for inflationi=1:length(INFLATION_RATES)
    plot(START_YEAR:1:END_YEAR, money(inflationi,:),"LineWidth", 2, "Color", colors(inflationi))
end