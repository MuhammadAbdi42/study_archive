% This is the exercise for '1. Save and Load Multiple Files'

%% Defining constants
BASEFILE_DIR = 'n01_save_load';
BASEFILE_NAME = 'testfile';
NUMBER_OF_FILES = 10;
RANDOM_DATA_DIMENSION = 100;

%% Creating files with random data in them
% Create folder if it doesn't exist
if ~exist(BASEFILE_DIR, 'dir')
    mkdir(BASEFILE_DIR);
end

% Creating files with random data in them
for i=1:NUMBER_OF_FILES
    % Creating file path and name
    filename = fullfile(BASEFILE_DIR, [BASEFILE_NAME num2str(i) '.mat']);

    % Skipping if the file exists
    if exist(filename,"file")
        continue
    end

    % Generating the random data
    randomdata = randn(RANDOM_DATA_DIMENSION);

    % Write to output file
    save(filename,'randomdata');
end

%% Loading the created files
% Initializing files list and data matrix
list_of_files = dir(fullfile(BASEFILE_DIR, [BASEFILE_NAME '*' '.mat']));
data_matrix = zeros(length(list_of_files),RANDOM_DATA_DIMENSION,RANDOM_DATA_DIMENSION);
data_cell = cell(1,length(list_of_files));

for i=1:length(list_of_files)
    % Building file path
    filename = fullfile(BASEFILE_DIR, list_of_files(i).name);

    % Loading the data
    load(filename,'randomdata');

    % Saving to cell array
    data_cell{i} = randomdata;

    % Saving to matrix
    data_matrix(i,:,:) = randomdata;
end
