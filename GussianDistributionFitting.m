clear;
close all;
clc;

clearvars;
x_min = 50;
mu1 = 0; sigma1 = 1;
data = readmatrix('.csv');
dat_normal = data(:,2);
pd = makedist('Normal', 'mu', mu1,'sigma', sigma1);
%% Generate data normally distributed random values truncated at x_min
dat_normal = dat_normal(dat_normal>x_min);
% dat_normal = pd.random(10000, 1);
% switch 'lr'
%     case 'l'
%         dat_normal = dat_normal(dat_normal>x_min);
%     case 'r'
%         dat_normal = dat_normal(dat_normal<10);
%     case 'lr'
%         dat_normal = dat_normal(dat_normal>x_min & dat_normal<10);
% end
%% Make a historgam
x_max = 655;
x = 1:1:x_max;
[counts,centers]  = hist(dat_normal, x);
bar(centers, counts/(sum(counts) * mean(diff(x)) ))
hold on
%use fitdist to find the paramters of our distribution
pd_fit = fitdist(dat_normal,'Normal');
display(pd_fit)
[norm_trunc, phat, phat_ci] = fitdist_ntrunc(dat_normal);
%% Plot results
figure(1)
clf
%Data
bar(centers, counts/(sum(counts) * mean(diff(x)) ), 0.4, 'Edgecolor', [0, 0.4470, 0.7410]);
hold on
plot(x, pd_fit.pdf(x),  'Linewidth', 3);
hold off
h1 = legend({'Data',  'Fitted Truncated Gaussian'});
set(h1,'Orientation','horizon')
xlabel('Bike Pick-ups');
set(gcf,'color','w');
set(gca,'Fontsize',30);
xlim([x_min, x_max]); 
set(gcf,'unit','centimeters','position',[2 2 30 15])
grid on
box on
ylabel('Probability Density')