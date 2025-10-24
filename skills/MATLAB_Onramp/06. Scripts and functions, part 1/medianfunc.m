%% Exercise 5
function themedian = medianfunc(input_var)
    input_var = sort(input_var);
    mid = round(numel(input_var) / 2);
    themedian = input_var(mid);