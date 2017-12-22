clc, clear all, close all
figure;
hold on;
ax = worldmap([25 35],[105 115]);  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.5, 0.9, 0.9])

data = load('data_new.csv');

[m,~] = size(data);

fnshp_L='map.shp';%ShapeType: 'PolyLine'  
readL=shaperead(fnshp_L);%该文件中没有每个省的名称  
geoshow(fnshp_L, 'FaceColor', [0.8, 0.9, 0.7]);

lakes=shaperead('worldlakes','UseGeoCoords',true);  
geoshow(lakes,'FaceColor','blue');  
rivers=shaperead('worldrivers','UseGeoCoords',true);  
geoshow(rivers,'Color','blue');  


green = [0 1 0];
yellow = [1 0.6 0];
std_size = 15;

%%%颜色——green，绿色；yellow，黄色
%%%标记——'s'，正方形；'o'，圆形；'v'，三角形

geoshow(30.99,108.89, 'DisplayType','Point','Marker','s','MarkerFaceColor',green,'MarkerEdgeColor',green,'Markersize',std_size);
geoshow(32.13,112.77, 'DisplayType','Point','Marker','o','MarkerFaceColor',yellow,'MarkerEdgeColor',yellow,'Markersize',std_size);
geoshow(30.02,112.14, 'DisplayType','Point','Marker','v','MarkerFaceColor',yellow,'MarkerEdgeColor',yellow,'Markersize',std_size);
geoshow(27.5,109.95, 'DisplayType','Point','Marker','v','MarkerFaceColor',yellow,'MarkerEdgeColor',yellow,'Markersize',std_size*1.25*1.25);
geoshow(27.44,109.95, 'DisplayType','Point','Marker','v','MarkerFaceColor',green,'MarkerEdgeColor',green,'Markersize',std_size*1.25*1.25);
geoshow(27.87,109.8, 'DisplayType','Point','Marker','v','MarkerFaceColor',green,'MarkerEdgeColor',green,'Markersize',std_size*1.25*1.25);
geoshow(29.13,109.47, 'DisplayType','Point','Marker','v','MarkerFaceColor',yellow,'MarkerEdgeColor',yellow,'Markersize',std_size*1.25*1.25);
geoshow(29.58,111.38, 'DisplayType','Point','Marker','v','MarkerFaceColor',green,'MarkerEdgeColor',green,'Markersize',std_size*1.5*1.5);
geoshow(29.42,111.12, 'DisplayType','Point','Marker','v','MarkerFaceColor',green,'MarkerEdgeColor',green,'Markersize',std_size*1.5*1.5);

figure;
hold on;
x = 0:10;
y1 = 0:10;
y2 = 0:10;
y3 = 0:10;
plot(x, y1, 'Marker','o','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
plot(x, y2, 'Marker','s','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
plot(x, y3, 'Marker','v','MarkerFaceColor',[0.3 0.3 0.3],'MarkerEdgeColor',[0.3 0.3 0.3],'Color',[1 1 1],'Markersize',20);  
leg = legend('汽车', '自行车', '未知'); 
set(leg, 'Fontsize', 30);

figure;
hold on;
x = 0:10;
y1 = 0:10;
y2 = 0:10;
plot(x, y1, 'Marker','o','MarkerFaceColor',green,'MarkerEdgeColor',green,'Color',[1 1 1],'Markersize',20);  
plot(x, y2, 'Marker','o','MarkerFaceColor',yellow,'MarkerEdgeColor',yellow,'Color',[1 1 1],'Markersize',20);  
leg = legend('县', '市'); 
set(leg, 'Fontsize', 30);


