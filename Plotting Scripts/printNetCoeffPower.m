clear all
flexionRatio=33;
shimColor='black';
filename=strcat('results_',num2str(flexionRatio),'_',shimColor);
load(filename)

figure('units','normalized','outerposition',[0 0 1 1])

errorbar(meanResults.reducedFreq(1,:),meanResults.netCoeffPower(1,:),...
    meanResults.errNetCoeffPower(1,:),'-.mo','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(3,:),meanResults.netCoeffPower(2,:),...
    meanResults.errNetCoeffPower(2,:),'-.c*','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(5,:),meanResults.netCoeffPower(3,:),...
    meanResults.errNetCoeffPower(3,:),'-.kp','LineWidth',1)
hold on

errorbar(meanResults.reducedFreq(1,:),meanResults.coeffPower(1,:),...
    meanResults.errCoeffPower(1,:),'-r<','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(3,:),meanResults.coeffPower(3,:),...
    meanResults.errCoeffPower(3,:),'-g>','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(5,:),meanResults.coeffPower(5,:),...
    meanResults.errCoeffPower(5,:),'-bv','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(1,:),meanResults.coeffPower(2,:),...
    meanResults.errCoeffPower(2,:),':r<','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(3,:),meanResults.coeffPower(4,:),...
    meanResults.errCoeffPower(4,:),':g>','LineWidth',1)
hold on
errorbar(meanResults.reducedFreq(5,:),meanResults.coeffPower(6,:),...
    meanResults.errCoeffPower(6,:),':bv','LineWidth',1)
hold on

grid on
legend('Net Coeff Power - Trial 1',...
    'Net Coeff Power - Trial 2',...
    'Net Coeff Power - Trial 3',...
    'Windtunnel Coeff Power - Trial 1',...
    'Windtunnel Coeff Power - Trial 2',...
    'Windtunnel Coeff Power - Trial 3',...
    'Vacuum Chamber Power - Trial 1',...
    'Vacuum Chamber Power - Trial 2',...
    'Vacuum Chamber Power - Trial 3',...
    'Location','NorthWest')
%title('Coeff of Power vs Reduced Freq')
set(gca, 'FontName', 'Arial')
set(gca, 'FontSize', 16)
ylabel('Coeff of Power','FontSize',16)
xlabel('Reduced Freq','FontSize',16)