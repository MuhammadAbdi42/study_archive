% This is the exercise for '3. Complex Numbers and Euler's Formula'

%% Complex numbers
REAL_PART = 3;
IMAGINARY_PART = 2;

complex_number = REAL_PART + 1i*IMAGINARY_PART;

%% Euler's formula
MAGNITUDE = 2;
ANGLE = pi/3;

e1 = MAGNITUDE * exp(1i*ANGLE);
e2 = MAGNITUDE * (cos(ANGLE) + 1i*sin(ANGLE));

fprintf('%g\n', e2 - e1)

%% Extracting magnitude and angle from e1 or e2
mag = abs(e1);
ang = angle(e1);
fprintf('%g %g\n', mag, ang)
