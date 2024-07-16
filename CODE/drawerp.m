%{
This code file is used to plot single or combined ERP figures,adjusted to your path and modified as needed. 
%}
%% draw single erp
clear;clc;
powerall=[2.5 2.75 3 3.25 3.5 3.75 4 4.25 4.5];
for i=1:length(powerall)
    power=powerall(i);
    powername=num2str(power);
    load_path=['G:\bids_ALL_result\power\'  powername '.mat'];% change your path
    save_path=['G:\bids_ALL_result\power\figure\'  powername '.tif'];% change your path
    load(load_path);
    figure;
    hold on;
    legend_name=powername;
    plot(EEG.times, squeeze(mean(data(:,:,:),1)),'b','LineWidth',1);
    xlim([-500 1000]);  % define the region of X axis [-1000 2000]
    ylim([-10 10]); % define the region of Y axis
    legend(legend_name);
    title('Laser power level Cz waveforms by condition','fontsize',16); % specify the figure name
    set(gca,'YDir','reverse');
    xlabel('Latency (ms)','fontsize',16); % name of X axis
    ylabel('Amplitude (uV)','fontsize',16);  % name of Y axis
    saveas(gcf,save_path,'tif');
end
%% all
% load_path='G:\bids_ALL_result\power\all.mat';% path of all.mat,change your path
% load(load_path);
figure;
hold on;
plot(EEG.times, smoothdata(squeeze(mean(n{1,1},1))),'color',[197/255,168/255,206/255],'LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,2},1))),'color',[235/255,200/255,0/255],'LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,3},1))),'r','LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,4},1))),'b','LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,5},1))),'g','LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,6},1))),'m','LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,7},1))),'color',[125/255,82/255,132/255],'LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,8},1))),'color',[73/255,102/255,138/255],'LineWidth',1);
% plot(EEG.times, smoothdata(squeeze(mean(n{1,9},1))),'color',[204/255,93/255,32/255],'LineWidth',1);
% plot(EEG.times, smoothdata(squeeze(mean(n{1,10},1))),'k','LineWidth',1);
% legend_name={'1','2','3','4','5','6','7','8','9','10'};
legend_name={ '2.75' '3' '3.25' '3.5' '3.75' '4' '4.25' };
xlim([-500 1500]);  %% define the region of X axis [-1000 2000]
% ylim([-4 2]); %% define the region of Y axis
legend(legend_name);
title('Power level waveforms by condition','fontsize',16); %% specify the figure name
set(gca,'YDir','reverse');
xlabel('Latency (ms)','fontsize',16); %% name of X axis
ylabel('Amplitude (uV)','fontsize',16);  %% name of Y axis
% saveas(gcf,'G:\bids_ALL_result\fzrating\all.tif','tif');% change your path
