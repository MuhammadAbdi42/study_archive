% This is the exercise for '6. Sigmoid Function'
% and '7. Unsolved Sigmoid and Error Function'

%% Function
sig_func = @(a,b,c,x) a./(1 + exp(-b*(x-c)));

%% CONSTANTS
A = 2;
B = 2.5;
C = 0;
LOWERBOUND = -5;
HIGHERBOUND = 5;
TICKS = 400;
VERTICAL_OFFSET = 1;

%% Initializing and compting data
x = linspace(LOWERBOUND,HIGHERBOUND,TICKS);
y = sig_func(A,B,C,x);

%% Initializing erf function
y_erf = erf(x);

%% Plotting
figure(1), clf
hold on
axis tight

plot(x,y - VERTICAL_OFFSET,'LineWidth', 2)
plot(x,y_erf,'LineWidth', 2,'Color','r')
plot([1 1]*C,get(gca,'YLim'),'k--')
plot(get(gca,'XLim'),[1 1]*(A/2 - VERTICAL_OFFSET),'k--')

title 'Sigmoid Function and ERF'
ylabel 'f(x)'
xlabel 'x'
legend ('Sigmoid','ERF')

