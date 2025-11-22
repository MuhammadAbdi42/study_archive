% This is the exercise for '3. Working with Text (Characters and Strings)'

wholetext = 'Hello my name is Mike and I like purple.';

% Seperate into a cell array based on spaces
wordsep = regexp(wholetext,' ','split');

% Remove any words with exactly 4 characters
words2keep = cellfun(@(x) length(x) ~= 4, wordsep);
wordsep2 = wordsep(words2keep);

% Replace 'Mike' and 'Purple'
target_name = 'Mike';
target_color = 'purple';

new_name = 'Muhammad';
new_color = 'Blue';

name_index = strfind(wholetext, target_name);
color_index = strfind(wholetext, target_color);

new_wholetext = [wholetext(1:name_index-1) ...
    new_name ...
    wholetext(name_index + length(target_name):color_index - 1) ...
    new_color ...
    wholetext(color_index + length(target_color):length(wholetext))];