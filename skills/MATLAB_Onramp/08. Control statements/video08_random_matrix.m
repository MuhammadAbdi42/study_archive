%% Video 8 Excercise
ROW = 4; COL = 6;
LOWER_BOUND = 5; HIGHER_BOUND = 17; 

thematrix = randi([LOWER_BOUND, HIGHER_BOUND], ROW, COL);

odd_count = 0; even_count = 0;
for rowi = 1:ROW
    for colj = 1:COL
        if mod(thematrix(rowi, colj), 2) == 0
            even_count = even_count + 1;
        else
            odd_count = odd_count + 1;
        end
    end
end

disp(['Even numbers ratio: ' num2str(even_count/(ROW * COL))]);
disp(['Odd numbers ratio: ' num2str(odd_count/(ROW * COL))]);
