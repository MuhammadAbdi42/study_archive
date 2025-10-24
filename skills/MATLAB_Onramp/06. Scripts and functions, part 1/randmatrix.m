%% Exercise 1
function thematrix = randmatrix(m, n)
    multiplier = randn();
    thematrix = randn(m, n) * multiplier;
    disp(['The multiplier: ' num2str(multiplier)])
    disp(['The random matrix: '])
    disp(thematrix)