% This is the exercise for '2. Import Formatted Text Data'

%% Openning the file
fid = fopen('n02_read_file/2. datafile.txt', 'r');

%% Reading the file
% Skipping the start header
start_header = fgetl(fid);

% Reading number of sensors
num_of_sensors_line = regexp(fgetl(fid), '\t', 'split');
num_of_sensors = str2double(num_of_sensors_line{3});

% Reading number of time points
num_of_time_points_line = regexp(fgetl(fid), '\t', 'split');
num_of_time_points = str2double(num_of_time_points_line{3});

% Skipping the end header
end_header = fgetl(fid);

% Move pointer to the next line of 'Start data'
while true
    temp = fgetl(fid);
    if contains(temp, 'Start data')
        break
    end
end

%% Storing data
% Intializing the data matrix
sensor_time = zeros(num_of_sensors, num_of_time_points);

% Storing the data into data matrix
while true
    temp = fgetl(fid);

    if contains(temp, 'End data')
        break
    end

    temp = regexp(temp, '\t', 'split');
    target_sensor = str2double(temp{2});
    target_time = str2double(temp{4});

    sensor_time(target_sensor, target_time) = str2double(temp{6});
end

%% Plotting the data
figure, clf
plot(sensor_time')

%% Closing the file
fclose(fid);
