% This is the exercise for '6. Filefolder Information Using Structures'

% Using dir() function to get information about the current directory
files_folders = dir();

% Seperating files and folders
folders = {files_folders([files_folders.isdir] == 1).name};
files = {files_folders([files_folders.isdir] == 0).name};

% Length of filenames
len_files = cellfun(@length, files);

% Selective filenames
m_files = {dir('*.m').name};