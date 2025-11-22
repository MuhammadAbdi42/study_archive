% This is the exercise for '5. Round pi to N significant Digits'

format long
PRECISION = 6;
new_pi = round(pi*10^PRECISION) / (10^PRECISION);
disp(new_pi)