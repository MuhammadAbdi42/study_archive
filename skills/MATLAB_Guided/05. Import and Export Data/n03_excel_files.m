% This is the exercise for '3. Import Excel-format Data'

%% Importing the file
[num_excel, txt_excel, raw_excel] = xlsread("n03_excel_files/3. sensordata.xlsx");

%% Getting number of sensors and time points
header_column = raw_excel(:, 2);
num_of_sensors_ind = find(strcmpi(header_column, 'Number of sensors'));
num_of_time_points_ind = find(strcmpi(header_column, 'Number of time points'));

num_of_sensors = cell2mat(raw_excel(num_of_sensors_ind, 3));
num_of_time_points = cell2mat(raw_excel(num_of_time_points_ind, 3));

%% Finding sensors, timepoints and values
header_column = raw_excel(:, 1);
start_ind = find(strcmpi(header_column, 'Start data')) + 1;
end_ind = find(strcmpi(header_column, 'End data')) - 1;

sensors = cell2mat(raw_excel(start_ind:end_ind, 2));
timepoints = cell2mat(raw_excel(start_ind:end_ind, 4));
values = cell2mat(raw_excel(start_ind:end_ind, 6));

%% Initializing data matrix
sensor_time = nan(num_of_sensors, num_of_time_points);

%% Storing data into the matrix
trials = end_ind - start_ind + 1;
for i = 1:trials
    sensor_time(sensors(i), timepoints(i)) = values(i);
end

%% Showing warning for NaN values
missing_data = find(isnan(sensor_time));
for i = 1:length(missing_data)
    [r, c] = ind2sub(size(sensor_time), missing_data(i));
    warning(['Sensor ', num2str(r), ', timepoint ', num2str(c), ' is missing!'])
end

%% Plotting
figure, clf
plot(sensor_time', 's-', 'MarkerFaceColor', 'w')
ylabel 'Value'
xlabel 'Timepoint'
title 'Sensor values over timepoint'
legend('Sensor 1', 'Sensor 2', 'Sensor 3')
