% This is the exercise for '4. HTML Table from MATLAB Code'

% This HTML file will display a N-by-3 table with columns (index, random
% number (-MIN:MAX), random letter [ASCII 48-90])


% Generating data
N = 50;
MIN = -100; MAX = 100;
random_numbers = randi([MIN, MAX], N, 1);
random_letters = char(randi([48,90], N, 1));

% HTML file
disp('<html>')
disp('<body>')

disp('<table>')
disp('<tr><td> INDEX </td><td> Random number </td><td> Random character </td></tr>')

for i=1:N
    disp(['<tr><td>' num2str(i) '</td><td>' num2str(random_numbers(i)) '</td><td>' num2str(random_letters(i)) '</td></tr>'])
end

disp('</table')
disp('</body>')
disp('</html>')
