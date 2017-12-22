clc, clear all, close all
figure;
hold on;
ax = worldmap('China');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.5, 0.9, 0.9])

data = load('data_new.csv');

[m,~] = size(data);

fnshp_L='map.shp';%ShapeType: 'PolyLine'  
readL=shaperead(fnshp_L);%该文件中没有每个省的名称  
geoshow(fnshp_L, 'FaceColor', [0.9, 0.9, 0.5]);



for i = 1:m
    switch(data(i,3))
        case 1
            color = [1,0,0];
        case 2
            color = [1 0.5 0];
        case 3
            color = [0 1 0];
        case 4
            color = [1 1 0];
    end
    switch(data(i,3))
        case 1
            marker = 'o';
        case 2
            marker = 's';
        case 3
            marker = 'v';
        case 4
            marker = 'd';
    end
    geoshow(data(i,1),data(i,2), 'DisplayType','Point','Marker',marker,'MarkerFaceColor',color,'MarkerEdgeColor',color,'Markersize',20);
end





figure;
hold on;
x = 0:10;
y1 = 0:10;
y2 = 0:10;
y3 = 0:10;
y4 = 0:10;
plot(x, y1, 'Marker','o','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
plot(x, y2, 'Marker','s','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
plot(x, y3, 'Marker','v','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
plot(x, y4, 'Marker','d','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
leg = legend('Temperate grassland', 'Tropical and subtropical grassland', 'Montane grassland','Temperate savanna'); 
set(leg, 'Fontsize', 20);
figure;
hold on;
x = 0:10;
y1 = 0:10;
y2 = 0:10;
y3 = 0:10;
y4 = 0:10;
plot(x, y1, 'Marker','o','MarkerFaceColor',[1,0,0],'MarkerEdgeColor',[1,0,0],'Color',[1 1 1],'Markersize',20);  
plot(x, y2, 'Marker','o','MarkerFaceColor',[1 0.5 0],'MarkerEdgeColor',[1 0.5 0],'Color',[1 1 1],'Markersize',20);  
plot(x, y3, 'Marker','o','MarkerFaceColor',[0 1 0],'MarkerEdgeColor',[0 1 0],'Color',[1 1 1],'Markersize',20);  
plot(x, y4, 'Marker','o','MarkerFaceColor',[1 1 0],'MarkerEdgeColor',[1 1 0],'Color',[1 1 1],'Markersize',20);  
leg = legend('N addition', 'Warming', 'CO_2 enrichment','Precipientation change'); 
set(leg, 'Fontsize', 20);
