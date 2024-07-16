function rating_screen (file_name,input_path,save_path,rating,t)
    EEG = pop_loadset('filename', file_name, 'filepath', input_path);
    for i=1:size(EEG.event,2)
        t(i)=EEG.event(i).rating;
    end
    if ismember(rating,t)
        EEG = pop_selectevent( EEG, 'rating',rating,'deleteevents','on','deleteepochs','on','invertepochs','off');
        EEG = pop_saveset(EEG, 'filename', file_name, 'filepath', save_path);
    end
end
