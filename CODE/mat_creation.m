%{
This code file is used to synthesize a 3D array of subject ID*specified
electrodes*time with selectes specified intensity or rating.

The mat_generate function is located in the code-function folder.
%}
%% power
clear;clc;
powerall=[2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5];
for k=1:length(powerall)
power=powerall(k);
powername=num2str(power);
file_path1 = ['H:\BIDS\ERP\ANT\POWER\' powername];% change your path
file_path2 = ['H:\BIDS\ERP\BioSemi\POWER\' powername];% change your path
file_path3 = ['H:\BIDS\ERP\BP\POWER\' powername];% change your path
A26 = dir(fullfile(file_path2, '*26ByBiosemi*set*')); % Acpuire all designated files
B26 = {A26.name};
A29 = dir(fullfile(file_path1, '*29ByANT*set*'));
B29 = {A29.name};
C29 = dir(fullfile(file_path3, '*29ByBP*set*'));
D29 = {C29.name};
A30 = dir(fullfile(file_path1, '*30ByANT*set*')); 
B30 = {A30.name};
A39 = dir(fullfile(file_path3, '*39ByBP*set*')); 
B39 = {A39.name};
A65 = dir(fullfile(file_path1, '*65ByANT*set*')); 
B65 = {A65.name};
A142 = dir(fullfile(file_path2, '*142ByBiosemi*set*')); 
B142 = {A142.name};
A223= dir(fullfile(file_path3, '*223ByBP*set*')); 
B223 = {A223.name};
A95 = dir(fullfile(file_path3, '*95ByBP*set*')); 
B95 = {A95.name};
eeglab;

chanlable1 = ["FP1","FPZ","FP2","F7","F3","FZ","F4","F8","FC5","FC1","FC2","FC6","T7","C3","CZ","C4","T8","CP5","CP1","CP2","CP6","P7","P3","PZ","P4","P8","POZ","O1","OZ","O2"];
chanlable2 = ["Fp1","Fpz","Fp2","F7","F3","Fz","F4","F8","FC5","FC1","FC2","FC6","T7","C3","Cz","C4","T8","CP5","CP1","CP2","CP6","P7","P3","Pz","P4","P8","POz","O1","Oz","O2"];

for i=1:30
channame=num2str(i);
cz1 = mat_generate2 (B26,file_path2,chanlable1(i));
cz2 = mat_generate2 (B29,file_path1,chanlable2(i));
    cz3 = mat_generate2 (B30,file_path1,chanlable2(i));
    cz4 = mat_generate2 (B39,file_path3,chanlable2(i));
    cz5 = mat_generate2 (B65,file_path1,chanlable2(i));
    cz6 = mat_generate2 (B142,file_path2,chanlable1(i));
    cz7 = mat_generate2 (B223,file_path3,chanlable2(i));
    cz8 = mat_generate2 (B95,file_path3,chanlable2(i));
    cz9 = mat_generate2 (D29,file_path3,chanlable2(i));
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
file_name = ['H:\BIDS\powerall\' powername '\' channame '.mat'];% change your path
save( file_name ,'data','EEG');
end
end

%% rating
clear;clc;
ratingall=1:10;
for k=1:length(ratingall)
    rating=ratingall(k);
    ratingname=num2str(rating);
    file_path1 = ['H:\BIDS\ERP\ANT\RATING\' ratingname];% change your path
    file_path2 = ['H:\BIDS\ERP\BioSemi\RATING\' ratingname];% change your path
    file_path3 = ['H:\BIDS\ERP\BP\RATING\' ratingname];% change your path
    A26 = dir(fullfile(file_path2, '*26ByBiosemi*set*')); % Acpuire all designated files
    B26 = {A26.name};
    A29 = dir(fullfile(file_path1, '*29ByANT*set*'));
    B29 = {A29.name};
    C29 = dir(fullfile(file_path3, '*29ByBP*set*'));
    D29 = {C29.name};
    A30 = dir(fullfile(file_path1, '*30ByANT*set*')); 
    B30 = {A30.name};
    A39 = dir(fullfile(file_path3, '*39ByBP*set*')); 
    B39 = {A39.name};
    A65 = dir(fullfile(file_path1, '*65ByANT*set*')); 
    B65 = {A65.name};
    A142 = dir(fullfile(file_path2, '*142ByBiosemi*set*')); 
    B142 = {A142.name};
    A223= dir(fullfile(file_path3, '*223ByBP*set*')); 
    B223 = {A223.name};
    A95 = dir(fullfile(file_path3, '*95ByBP*set*')); 
    B95 = {A95.name};
    eeglab
     chanlable1 = ["FP1","FPZ","FP2","F7","F3","FZ","F4","F8","FC5","FC1","FC2","FC6","T7","C3","CZ","C4","T8","CP5","CP1","CP2","CP6","P7","P3","PZ","P4","P8","POZ","O1","OZ","O2"];
chanlable2 = ["Fp1","Fpz","Fp2","F7","F3","Fz","F4","F8","FC5","FC1","FC2","FC6","T7","C3","Cz","C4","T8","CP5","CP1","CP2","CP6","P7","P3","Pz","P4","P8","POz","O1","Oz","O2"];
    for i=1:30
        channame=num2str(i);
        cz1 = mat_generate2 (B26,file_path2,chanlable1(i));
        cz2 = mat_generate2 (B29,file_path1,chanlable2(i));
        cz3 = mat_generate2 (B30,file_path1,chanlable2(i));
        cz4 = mat_generate2 (B39,file_path3,chanlable2(i));
        cz5 = mat_generate2 (B65,file_path1,chanlable2(i));
        cz6 = mat_generate2 (B142,file_path2,chanlable1(i));
        cz7 = mat_generate2 (B223,file_path3,chanlable2(i));
        cz8 = mat_generate2 (B95,file_path3,chanlable2(i));
        cz9 = mat_generate2 (D29,file_path3,chanlable2(i));
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
    file_name = ['H:\BIDS\ratingall\' ratingname '\' channame '.mat'];% change your path
    save( file_name ,'data','EEG');
    end
end
%% create an array of all intensities or ratings if needed
powerall=[2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5];
n={};
for i=1:length(powerall)
    power=powerall(i);
    powername=num2str(power);
    file_name = ['H:\BIDS\powerall\' powername '\15.mat'];% change your path
    load(file_name);
    n{i}=data(:,:,:);
end
save('H:\BIDS\ERP-power.mat','n','EEG')% change your path

%% create an array of all intensities or ratings if needed
ratingall=1:10;
n={};
for i=1:length(ratingall)
    rating=ratingall(i);
    ratingname=num2str(rating);
    file_name = ['H:\BIDS\ratingall\' ratingname '\15.mat'];% change your path
    load(file_name);
    n{i}=data;
end
 save('H:\BIDS\ERP-rating.mat','n','EEG')% change your path


