%{
This code file is used to plot single or combined ERP figures,adjusted to your path and modified as needed. 
%}
%% power
%load('H:\BIDS\ERP-power.mat')
%load('F:\Desktop\Data\MAT\TIMES.mat')
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
plot(EEG.times, smoothdata(squeeze(mean(n{1,9},1))),'color',[204/255,93/255,32/255],'LineWidth',1);

legend_name={ '2.5' '2.75' '3' '3.25' '3.5' '3.75' '4' '4.25' '4.5'};
xlim([-500 1000]);  %% define the region of X axis [-1000 2000]
ylim([-10 10]); %% define the region of Y axis
legend(legend_name);
title('Power level waveforms by condition','fontsize',16); %% specify the figure name
set(gca,'YDir','reverse');
xlabel('Latency (ms)','fontsize',16); %% name of X axis
ylabel('Amplitude (uV)','fontsize',16);  %% name of Y axis

%% rating
%load('H:\BIDS\ERP-rating.mat')
%load('F:\Desktop\Data\MAT\TIMES.mat')
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
plot(EEG.times, smoothdata(squeeze(mean(n{1,9},1))),'color',[204/255,93/255,32/255],'LineWidth',1);
plot(EEG.times, smoothdata(squeeze(mean(n{1,10},1))),'k','LineWidth',1);

legend_name={'1','2','3','4','5','6','7','8','9','10'};
xlim([-500 1500]);  %% define the region of X axis [-1000 2000]
ylim([-8 8]); %% define the region of Y axis
legend(legend_name);
title('Rating level waveforms by condition','fontsize',16); %% specify the figure name
set(gca,'YDir','reverse');
xlabel('Latency (ms)','fontsize',16); %% name of X axis
ylabel('Amplitude (uV)','fontsize',16);  %% name of Y axis
