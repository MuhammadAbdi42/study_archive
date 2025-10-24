% Exercise 1
my_name = "Muhammad";

muhammad = 23;
mahdi = 20;

age = (muhammad - mahdi + 2) * mahdi

% Exercise 2
a = 13;
b = 17;

(5 * a) / (1 - b/3)
a^b - b^a
15^a * (b/2*a)
(-b + b^2 - 4*a) / (2*a)

% Exercise 3
1000000*1.03^-(65-25)
50000*1.03^(101.3482)

% Exercise 4
[1:4 8:12]
[-4:4:4 -3:3:3 -2:2:2 -1:1:1]
[0:0.3:0.9 0.6:-0.3:-0.3]

% Exercise 5
% a. [ 'M' 'i' 'k' 'e' ] produces 'Mike'
% b. [ 'M' 'i','k','e' ] produces 'Mike'
% c. [ 'M';'i';'k';'e' ] produces a column 'Mike'
% d. [ 'M';'i','k','e' ] gives an error due to incosistent sizes
% e. [ 'M' 'i' 'k' 4 ] the 4 will turn to its corresponding ASCII character
% f. [ 'M' 'i' 'k' '4' ] produces 'Mik4'
% g. [ 'Mi' 'k' 'e' ] produces 'Mike'
% h. [ 'Mi';'k';'e' ] gives an error due to incosistent sizes
% i. { 'M' 'i' 'k' 'e' } prodeces a row cell array with size 4
% j. { 'M','i','k','e' } prodeces a row cell array with size 4
% k. { 'M';'i';'k';'e' } prodeces a column cell array with size 4
% l. { 'M' 'i' 'k' 4 } prodeces a row cell array with size 4
% m. { 'M' 'i' 'k' '4' } prodeces a row cell array with size 4
% n. { 'Mi';'k';'e' } prodeces a column cell array with size 3
% o. [ 'M' 'i' 'k' 'e' } gives an error for incosistent brackets

% Exercise 6
% It appends the value
v = [1 4 3];
v(4) = 0;
v(4)