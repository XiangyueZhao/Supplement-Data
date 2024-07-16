function power_screen (file_name,input_path,save_path,power,t)
    EEG = pop_loadset('filename', file_name, 'filepath', input_path);
    for i=1:size(EEG.event,2)
        t(i)=EEG.event(i).laser_power;
    end
    if ismember(power,t)
        EEG = pop_selectevent( EEG, 'laser_power',power,'deleteevents','on','deleteepochs','on','invertepochs','off');
        EEG = pop_saveset(EEG, 'filename', file_name, 'filepath', save_path);
    end
end
