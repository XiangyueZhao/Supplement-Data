%{ 
 The code file is employed to identify trial instances that possess
soecified stimulus intensity or ratings,and it saves the corresponding
 .set files,which exclusively contain those trial instances with whe
 designated stimulus intensity or ratings,in a predetermined directory.

Before using it,you should modify the stimulus intensity and rating that
you need,and create folders for each intensity or rating in your path,and
modify the code path.

The power_screen function and rating_screen function is located in the
code-function folder.
%}
%%  power
clear;
clc;
eeglab
powerall=[2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5];
for k=1:length(powerall)
    power=powerall(k);
    powername=num2str(power);
    save_path = ['G:\bids_ALL_result\power\' powername];% change your path
%     t=[];
%     for subi = 1:26
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_26_ByBiosemi\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\derivatives\26\fz\';% change your path
%         file_name = [sub(subi, :) '_26ByBiosemi.set'];
%         power_screen (file_name,input_path,save_path,power,t);% The function requires an initial array as input
%     end
%     t=[];
%     for subi = 1:29
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_29_ByANT\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\derivatives\29\fz\';% change your path
%         file_name = [sub(subi, :) '_29ByANT.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
    t=[];
    for subi = 1:29
        behav_data = tdfread('G:\bids_ALL_result\BIDS_29_ByBP\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\BIDS_29_ByBP\derivates\fz\';% change your path
        file_name = [sub(subi, :) '_29ByANT.set'];
        power_screen (file_name,input_path,save_path,power,t);
    end
%     t=[];
%     for subi = 1:30
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_30_ByANT\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\BIDS_30_ByANT\derivatives\rerefer\';% change your path
%         file_name = [sub(subi, :) '_30ByANT.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
%     t=[];
%     for subi = 1:39
%         
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_39_ByBP\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\derivatives\39\fz\';% change your path
%         file_name = [sub(subi, :) '_39ByBP.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
%     t=[];
%     for subi = 1:65
%         
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_65_ByANT\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\BIDS_65_ByANT\derivatives\rerefer\';% change your path
%         file_name = [sub(subi, :) '_65ByANT.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
%     t=[];
%     for subi = 1:142
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_142_ByBiosemi\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\derivatives\142\fz\';% change your path
%         file_name = [sub(subi, :) '_142ByBiosemi.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
%     t=[];
%     for subi = 1:223
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_223_ByBP\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\derivatives\223\fz\';% change your path
%         file_name = [sub(subi, :) '_223ByBP.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
%     
%     t=[];
%     for subi = 1:95
%         behav_data = tdfread('G:\bids_ALL_result\BIDS_95_ByBP\participants.tsv');% change your path
%         sub = behav_data.participant_id;
%         input_path = 'G:\bids_ALL_result\BIDS_95_ByBP\derivatives\rerefer\';% change your path
%         file_name = [sub(subi, :) '_95ByBP.set'];
%         power_screen (file_name,input_path,save_path,power,t);
%     end
end

%%  rating
clear;
clc;
eeglab
ratingall=1:10;
for k=1:length(ratingall)
    rating=rating(k);
    ratingname=num2str(rating);
    save_path = ['G:\bids_ALL_result\fzrating\' ratingname];% change your path
    t=[];
    for subi = 1:26
        behav_data = tdfread('G:\bids_ALL_result\BIDS_26_ByBiosemi\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\derivatives\26\fz\';% change your path
        file_name = [sub(subi, :) '_26ByBiosemi.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:29
        behav_data = tdfread('G:\bids_ALL_result\BIDS_29_ByANT\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\derivatives\29\fz\';% change your path
        file_name = [sub(subi, :) '_29ByANT.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:30
        behav_data = tdfread('G:\bids_ALL_result\BIDS_30_ByANT\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\BIDS_30_ByANT\derivatives\rerefer\';% change your path
        file_name = [sub(subi, :) '_30ByANT.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:39
        
        behav_data = tdfread('G:\bids_ALL_result\BIDS_39_ByBP\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\derivatives\39\fz\';% change your path
        file_name = [sub(subi, :) '_39ByBP.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:65
        
        behav_data = tdfread('G:\bids_ALL_result\BIDS_65_ByANT\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\BIDS_65_ByANT\derivatives\rerefer\';% change your path
        file_name = [sub(subi, :) '_65ByANT.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:142
        behav_data = tdfread('G:\bids_ALL_result\BIDS_142_ByBiosemi\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\derivatives\142\fz\';% change your path
        file_name = [sub(subi, :) '_142ByBiosemi.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    t=[];
    for subi = 1:223
        behav_data = tdfread('G:\bids_ALL_result\BIDS_223_ByBP\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\derivatives\223\fz\';% change your path
        file_name = [sub(subi, :) '_223ByBP.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
    
    t=[];
    for subi = 1:95
        behav_data = tdfread('G:\bids_ALL_result\BIDS_95_ByBP\participants.tsv');% change your path
        sub = behav_data.participant_id;
        input_path = 'G:\bids_ALL_result\BIDS_95_ByBP\derivatives\rerefer\';% change your path
        file_name = [sub(subi, :) '_95ByBP.set'];
        rating_screen (file_name,input_path,save_path,rating,t);
    end
end