clc;clear;

data = readmatrix('DistinctGPSAndCluster_20.csv'); 

lat1 = [];
lat2 = [];
lat3 = [];
lat4 = [];
lat5 = [];
lat6 = [];
lat7 = [];
lat8 = [];
lat9 = [];
lat10 = [];
lat11 = [];
lat12 = [];
lat13 = [];
lat14 = [];
lat15 = [];
lat16 = [];
lat17 = [];
lat18 = [];
lat19 = [];
lat20 = [];

lon1 = [];
lon2 = [];
lon3 = [];
lon4 = [];
lon5 = [];
lon6 = [];
lon7 = [];
lon8 = [];
lon9 = [];
lon10 = [];
lon11 = [];
lon12 = [];
lon13 = [];
lon14 = [];
lon15 = [];
lon16 = [];
lon17 = [];
lon18 = [];
lon19 = [];
lon20 = [];

[row, column] = size(data);
lon = data(:,1);
lat = data(:,2);
clu_index = data(:,3);
for i=1:row
    if clu_index(i) == 0
        lon1 = [lon1 lon(i)];
        lat1 = [lat1 lat(i)];
    end
    if clu_index(i) == 1 
        lon2 = [lon2 lon(i)];
        lat2 = [lat2 lat(i)];
    end
    if clu_index(i) == 2
        lon3 = [lon3 lon(i)];
        lat3 = [lat3 lat(i)];
    end
    if clu_index(i) == 3
        lon4 = [lon4 lon(i)];
        lat4 = [lat4 lat(i)];
    end
    if clu_index(i) == 4
        lon5 = [lon5 lon(i)];
        lat5 = [lat5 lat(i)];
    end
    if clu_index(i) == 5
        lon6 = [lon6 lon(i)];
        lat6 = [lat6 lat(i)];
    end
    if clu_index(i) == 6
        lon7 = [lon7 lon(i)];
        lat7 = [lat7 lat(i)];
    end
    if clu_index(i) == 7 
        lon8 = [lon8 lon(i)];
        lat8 = [lat8 lat(i)];
    end
    if clu_index(i) == 8 
        lon9 = [lon9 lon(i)];
        lat9 = [lat9 lat(i)];
    end
    if clu_index(i) == 9 
        lon10 = [lon10 lon(i)];
        lat10 = [lat10 lat(i)];
    end
    if clu_index(i) == 10 
        lon11 = [lon11 lon(i)];
        lat11 = [lat11 lat(i)];
    end
    if clu_index(i) == 11 
        lon12 = [lon12 lon(i)];
        lat12 = [lat12 lat(i)];
    end
    if clu_index(i) == 12
        lon13 = [lon13 lon(i)];
        lat13 = [lat13 lat(i)];
    end
    if clu_index(i) == 13
        lon14 = [lon14 lon(i)];
        lat14 = [lat14 lat(i)];
    end
    if clu_index(i) == 14
        lon15 = [lon15 lon(i)];
        lat15 = [lat15 lat(i)];
    end
    if clu_index(i) == 15
        lon16 = [lon16 lon(i)];
        lat16 = [lat16 lat(i)];
    end
    if clu_index(i) == 16
        lon17 = [lon17 lon(i)];
        lat17 = [lat17 lat(i)];
    end
    if clu_index(i) == 17
        lon18 = [lon18 lon(i)];
        lat18 = [lat18 lat(i)];
    end
    if clu_index(i) == 18
        lon19 = [lon19 lon(i)];
        lat19 = [lat19 lat(i)];
    end
    if clu_index(i) == 19
        lon20 = [lon20 lon(i)];
        lat20 = [lat20 lat(i)];
    end
end

color1 = [0, 0.4470, 0.7410];
color2 = [0.8500, 0.3250, 0.0980];
color3 = [0.9290, 0.6940, 0.1250];
color4 = [0.4940, 0.1840, 0.5560];
color5 = [0.4660, 0.6740, 0.1880];
color6 = [0.3010, 0.7450, 0.9330];
color7 = [0.6350, 0.0780, 0.1840];
color8 = [0, 0, 1];
color9 = [0, 0.5, 0];
color10 = [1, 0, 0];
color11 = [0, 0.75, 0.75];
color12 = [0.75, 0, 0.75];
color13 = [0.75, 0.75, 0];
color14 = [0.25, 0.25, 0.25];
color15 = [1, 1, 0];
color16 = [1, 0, 0.4];
color17 = [1, 0.8, 0.8];
color18 = [1, 0.4, 0.4];
color19 = [0.4, 0, 0];
color20 = [0.8, 0.8, 0.6];
color21 = [0, 1, 0.719];
color22 = [1, 0, 0.75];
color23 = [0.406, 0, 1];
color24 = [0.5, 1, 0];
color25 = [0.4, 0.4, 0];


olabelSize = 100;
g0 = scatter(lon1, lat1, olabelSize, color1, 'o'); 
hold on;
g1 = scatter(lon2, lat2, olabelSize, color2, '+'); 
hold on;
g2 = scatter(lon3, lat3, olabelSize, color3, '*');
hold on;
g3 = scatter(lon4, lat4, olabelSize, color4, '.'); 
hold on;
g4 = scatter(lon5, lat5, olabelSize, color5, 'x'); 
hold on;
g5 = scatter(lon6, lat6, olabelSize, color6, 's'); 
hold on;
g6 = scatter(lon7, lat7, olabelSize, color7, 'd');
hold on;
g7 = scatter(lon8, lat8, olabelSize, color8, '^');
hold on;
g8 = scatter(lon9, lat9, olabelSize, color9, 'v'); 
hold on;
g9 = scatter(lon10, lat10, olabelSize, color10, '>'); 
hold on;
g10 = scatter(lon11, lat11, olabelSize, color11, 'p');
hold on;
g11 = scatter(lon12, lat12, olabelSize, color12, 'p'); 
hold on;
g12 = scatter(lon13, lat13, olabelSize, color13, 'h'); 
hold on;
g13 = scatter(lon14, lat14, olabelSize, color14, 'v'); 
hold on;
g14 = scatter(lon15, lat15, olabelSize, color15, 'h'); 
hold on;
g15 = scatter(lon16, lat16, olabelSize, color16, '.');
hold on;
g16 = scatter(lon17, lat17, olabelSize, color17, 'x'); 
hold on;
g17 = scatter(lon18, lat18, olabelSize, color18, 's'); 
hold on;
g18 = scatter(lon19, lat19, olabelSize, color19, 'd');
hold on;
g19 = scatter(lon20, lat20, olabelSize, color20, '^');

grid on
xlabel('Longitude');
ylabel('Latitude');
set(gcf,'color','w');
set(gcf, 'PaperSize', [150 150]);
set(gcf,'unit','centimeters','position',[3 3 20 20])
set(gca,'Fontsize',25);
box on
export_fig("NYC_Taxi_Hourly_Pickups_2016.pdf");



