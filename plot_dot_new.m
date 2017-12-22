clc, clear all, close all
figure;
hold on;
ax = worldmap('World');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.8, 0.6, 0.8])

data = load('temp.csv');
maxdata = 35;
mindata = -5;

[site, ~] = size(data);
C=zeros(site,3);
colorscale = colormap(parula);
for i = 1:site
    C(i,:) = getcolor(data(i,3), colorscale, maxdata, mindata);
end


l1 = 0;
l2 = 0;
for i = 1:site
    if ((abs(data(i,2)-l2)<0.5) && (abs(data(i,1)-l1)<0.5))
        size_dot = size_dot+10;
    else
        size_dot = 30;
        l1 = data(i,1);
        l2 = data(i,2);
    end
    
    geoshow(data(i,1),data(i,2), 'DisplayType','Point','Marker','.','MarkerEdgeColor', C(i,:),'Markersize',size_dot);
    %geoshow(-89,0, 'DisplayType','Point','Marker','.','MarkerEdgeColor', 'r','Markersize',40);
end
colorbar
colorbar('FontSize',30,'Ticks',[0,0.25,0.5,0.75,1],'TickLabels',{num2str(mindata,2),num2str(mindata*0.75+maxdata*0.25,2),num2str(mindata*0.5+maxdata*0.5,2),num2str(mindata*0.25+maxdata*0.75,2),num2str(maxdata,2)});
title('Temperature(^oC)','FontSize',60);


figure;
hold on;
ax = worldmap('World');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.8, 0.8, 0.6])

data = load('prec.csv');
maxdata = 1600;
mindata = 0;

[site, ~] = size(data);
C=zeros(site,3);
colorscale = flipdim(colormap(jet),1);
for i = 1:site
    C(i,:) = getcolor(data(i,3), colorscale, maxdata, mindata);
end

l1 = 0;
l2 = 0;
for i = 1:site
    if ((abs(data(i,2)-l2)<0.5) && (abs(data(i,1)-l1)<0.5))
        size_dot = size_dot+10;
    else
        size_dot = 30;
        l1 = data(i,1);
        l2 = data(i,2);
    end
    
    geoshow(data(i,1),data(i,2), 'DisplayType','Point','Marker','.','MarkerEdgeColor', C(i,:),'Markersize',size_dot);
    %geoshow(-89,0, 'DisplayType','Point','Marker','.','MarkerEdgeColor', 'r','Markersize',40);
end
colorbar
colorbar('FontSize',30,'Ticks',[0,0.25,0.5,0.75,1],'TickLabels',{num2str(mindata,4),num2str(mindata*0.75+maxdata*0.25,4),num2str(mindata*0.5+maxdata*0.5,4),num2str(mindata*0.25+maxdata*0.75,4),num2str(maxdata,4)});
title('Precipitation(mm)','FontSize',60);
