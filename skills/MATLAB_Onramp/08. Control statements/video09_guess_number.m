%% Video 9 Exercise
LOWER_BOUND = 1; HIGHER_BOUND = 100;
random_number = randi([LOWER_BOUND, HIGHER_BOUND]);

guessed = false;
attempts = 0;
while ~guessed
    guess = input(['- Enter your guess (' num2str(LOWER_BOUND) '-' num2str(HIGHER_BOUND) '): ']);

    if mod(guess, 1)~=0
        disp('> The guess must be an integer!')
        continue
    elseif guess < LOWER_BOUND
        disp('> The guess is lower than the range!')
        continue
    elseif guess > HIGHER_BOUND
        disp('> The guess is higher than the range!')
        continue
    end

    attempts = attempts + 1;
    if guess == random_number
        disp(['> ' num2str(guess) ' IS CORRECT!'])
        disp(['> You guessed it in ' num2str(attempts) ' attempts.'])
        guessed = true;
    elseif guess > random_number
        disp(['> ' num2str(guess) ' is LARGER than the target!'])
    else
        disp(['> ' num2str(guess) ' is SMALLER than the target!'])
    end
end
