clear all
folder_name='WSU\';
Files=dir(fullfile(folder_name,'*.txt')) ;
[num_files,~]=size(Files);
% for file_counter = 38:num_files
file_counter=84;
clear newPirArray;
clear node*;
clear pir_array
% file_counter='44_4_21';
file = [folder_name,Files(file_counter).name];
% file=[folder_name,'aiLab_4_21.txt'];
trial
shorten_filtern
beep

% end

