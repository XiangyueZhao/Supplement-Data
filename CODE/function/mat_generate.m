function cz = mat_generate (file_name,file_path,chanlable)
    cz=[];
    for i=1:size(file_name,2)  %����ѭ��
        EEG= pop_loadset('filename',file_name(i),'filepath',file_path);  %��������
        c=squeeze(mean(EEG.data,3));
        for b=1:length(EEG.chanlocs)
            if EEG.chanlocs(b).labels ==chanlable
                num=b;
                cz(i,:,:)=c(num,:);
            end
        end
    end
end
