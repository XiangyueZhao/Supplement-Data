%{
This code file is used to synthesize a 3D array of subject ID*specified
electrodes*time with selectes specified intensity or rating.

The mat_generate function is located in the code-function folder.
%}
%% power
clear;clc;
powerall=[2.75 3 3.25 3.5 3.75 4 4.25 4.5];
for k=1:length(powerall)
    power=powerall(k);
    powername=num2str(power);
    file_name = ['G:\bids_ALL_result\fzpower\' powername '.mat'];% change your path
    file_path = ['G:\bids_ALL_result\fzpower\' powername];% change your path
    A26 = dir(fullfile(file_path, '*26ByBiosemi*set*')); % Acpuire all designated files
    B26 = {A26.name};
    A29 = dir(fullfile(file_path, '*29ByANT*set*'));
    B29 = {A29.name};
    C29 = dir(fullfile(file_path, '*29ByBP*set*'));
    D29 = {C29.name};
    A30 = dir(fullfile(file_path, '*30ByANT*set*')); 
    B30 = {A30.name};
    A39 = dir(fullfile(file_path, '*39ByBP*set*')); 
    B39 = {A39.name};
    A65 = dir(fullfile(file_path, '*65ByANT*set*')); 
    B65 = {A65.name};
    A142 = dir(fullfile(file_path, '*142ByBiosemi*set*')); 
    B142 = {A142.name};
    A223= dir(fullfile(file_path, '*223ByBP*set*')); 
    B223 = {A223.name};
    A95 = dir(fullfile(file_path, '*95ByBP*set*')); 
    B95 = {A95.name};
    eeglab
    chanlable = "Cz";% the electrodes intend for extraction
    cz1 = mat_generate (B26,file_path,chanlable);
    cz2 = mat_generate (B29,file_path,chanlable);
    cz3 = mat_generate (B30,file_path,chanlable);
    cz4 = mat_generate (B39,file_path,chanlable);
    cz5 = mat_generate (B65,file_path,chanlable);
    cz6 = mat_generate (B142,file_path,chanlable);
    cz7 = mat_generate (B223,file_path,chanlable);
    cz8 = mat_generate (B95,file_path,chanlable);
    cz9 = mat_generate (D29,file_path,chanlable);
    % synthetic array and save
    dataselect={};
    for d=1:9
        varname=sprintf('cz%d',d);
        if exist(varname,'var')
            dataselect{end+1}=eval(varname);
        end
    end
    data=cat(1,dataselect{:});
    tepoch=EEG.times;
    EEG=[];EEG.times=tepoch; 
    save( file_name ,'data','EEG');
end

%% rating
clear;clc;
ratingall=1:10;
for k=1:length(ratingall)
    rating=ratingall(k);
    ratingname=num2str(rating);
    file_name = ['G:\bids_ALL_result\fzrating\' ratingname '.mat'];% change your path
    file_path = ['G:\bids_ALL_result\fzrating\' ratingname];% change your path
     A26 = dir(fullfile(file_path, '*26ByBiosemi*set*')); % Acpuire all designated files
    B26 = {A26.name};
    A29 = dir(fullfile(file_path, '*29ByANT*set*'));
    B29 = {A29.name};
    C29 = dir(fullfile(file_path, '*29ByBP*set*'));
    D29 = {C29.name};
    A30 = dir(fullfile(file_path, '*30ByANT*set*')); 
    B30 = {A30.name};
    A39 = dir(fullfile(file_path, '*39ByBP*set*')); 
    B39 = {A39.name};
    A65 = dir(fullfile(file_path, '*65ByANT*set*')); 
    B65 = {A65.name};
    A142 = dir(fullfile(file_path, '*142ByBiosemi*set*')); 
    B142 = {A142.name};
    A223= dir(fullfile(file_path, '*223ByBP*set*')); 
    B223 = {A223.name};
    A95 = dir(fullfile(file_path, '*95ByBP*set*')); 
    B95 = {A95.name};
    eeglab
    chanlable = "Cz";% the electrodes intend for extraction
    cz1 = mat_generate (B26,file_path,chanlable);
    cz2 = mat_generate (B29,file_path,chanlable);
    cz3 = mat_generate (B30,file_path,chanlable);
    cz4 = mat_generate (B39,file_path,chanlable);
    cz5 = mat_generate (B65,file_path,chanlable);
    cz6 = mat_generate (B142,file_path,chanlable);
    cz7 = mat_generate (B223,file_path,chanlable);
    cz8 = mat_generate (B95,file_path,chanlable);
    cz9 = mat_generate (D29,file_path,chanlable);
    % synthetic array and save
    dataselect={};
    for d=1:9
        varname=sprintf('cz%d',d);
        if exist(varname,'var')
            dataselect{end+1}=eval(varname);
        end
    end
    data=cat(1,dataselect{:});
    tepoch=EEG.times;
    EEG=[];EEG.times=tepoch; 
    save( file_name ,'data','EEG');
end

%% create an array of all intensities or ratings if needed
% ratingall=[2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5];
rating=1:10;
n={};
for i=1:length(ratingall)
    rating=ratingall(i);
    ratingname=num2str(rating);
    file_name = ['G:\bids_ALL_result\rating\' ratingname '.mat'];% change your path
    load(file_name);
    n{i}=data(:,:,:);
end
save('G:\bids_ALL_result\rating\all.mat','n','EEG')% change your path