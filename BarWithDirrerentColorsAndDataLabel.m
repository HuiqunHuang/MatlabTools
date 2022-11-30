clear;
close all;
clc;								

%Define the colors' RGB values in a matrix
% http://math.loyola.edu/~loberbro/matlab/html/colorsInMatlab.html% col(5,:) = [0.9290, 0.6940, 0.1250];
% col(6,:) = [0.8500, 0.3250, 0.0980];
% col(7,:) = [0, 0.5, 0];

col(1,:) = [0.6350, 0.0780, 0.1840]; 
col(2,:) = [0.4660, 0.6740, 0.1880]; 
col(3,:) = [0, 0.4470, 0.7410]; 
col(4,:) = [0.4940, 0.1840, 0.5560]; 
col(5,:) = [0.9290, 0.6940, 0.1250];
% col(6,:) = [0.8500, 0.3250, 0.0980];
% col(7,:) = [0, 0.5, 0];

c=categorical({'2','3', '4', '5', '6'}); %x-axis
c = reordercats(c,{'2','3', '4', '5', '6'});
occupied= [97 82 75 88 69];   %y-axis
data = [2.601,1.989,1.721,1.659,1.682];
b=bar(c,data, 'FaceColor','flat', 'BarWidth', 0.3); % BarWidth:0-1
for i1=1:numel(data)
    text(c(i1),data(i1),num2str(data(i1),'%0.3f'),...
               'HorizontalAlignment','center',...
               'VerticalAlignment','bottom','FontSize',36)
end
% set(gcf, 'PaperSize', [100 50]);
set(gcf,'unit','centimeters','position',[3 5 35 20])
set(gca,'Fontsize',55);
set(gcf,'color','w');
A = getframe(gcf);
grid on
b.CData = col;
xlabel('K')
ylabel('MSLE')
ylim([1.5, 2.8])
% xtickangle(15)