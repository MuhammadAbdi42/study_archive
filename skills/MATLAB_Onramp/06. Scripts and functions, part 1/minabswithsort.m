%% Exercise 3
function themin = minabswithsort(input_vector)
    input_vector = sort(abs(input_vector));
    themin = input_vector(1);
