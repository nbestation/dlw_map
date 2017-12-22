clc, clear all, close all
figure;
hold on;
ax = worldmap('World');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [1, 1, 1])

data = load('data20170922.csv');

[site, ~] = size(data);
c = zeros(5,3);

c(1,:) = [0.54, 0.17, 0.89];
c(2,:) = [1, 0, 0];
c(3,:) = [1, 1, 0];
c(4,:) = [0, 0, 1];
c(5,:) = [0, 1, 0];

data(1:site,3:7) = sqrt(data(1:site,3:7))*30;

for i = 1:site
    offset = 0;
    %[r,order] = sort(data(i,3:7),'descend');
    for j = 1:5
        if (data(i,j+2) > 0)
            geoshow(data(i,1),data(i,2)+offset, 'DisplayType','Point','MarkerEdgeColor',c(j,:),'Marker','.','Markersize',data(i,j+2));
            offset = offset + 1.8;
        end
    end
end

figure;
hold on;
ax = worldmap('World');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [1, 1, 1])

data = load('data20170922.csv');

[site, ~] = size(data);
c = zeros(5,3);

c(1,:) = [0.54, 0.17, 0.89];
c(2,:) = [1, 0, 0];
c(3,:) = [1, 1, 0];
c(4,:) = [0, 0, 1];
c(5,:) = [0, 1, 0];

data(1:site,3:7) = sqrt(data(1:site,3:7))*30;

for i = 1:site
    offset = 0;
    %[r,order] = sort(data(i,3:7),'descend');
    for j = 1:5
        if (data(i,j+2) > 0)
            geoshow(data(i,1),data(i,2)+offset, 'DisplayType','Point','MarkerEdgeColor',c(j,:),'Marker','.','Markersize',50);
            offset = offset + 1.5;
        end
    end
end

figure;
hold on;
x = 0:10;
y1 = 0:10;
y2 = 0:10;
y3 = 0:10;
y4 = 0:10;
y5 = 0:10;
plot(x, y1, 'Marker','.','MarkerFaceColor',c(1,:),'MarkerEdgeColor',c(1,:),'Color',[1 1 1],'Markersize',50);  
plot(x, y2, 'Marker','.','MarkerFaceColor',c(2,:),'MarkerEdgeColor',c(2,:),'Color',[1 1 1],'Markersize',50);  
plot(x, y3, 'Marker','.','MarkerFaceColor',c(3,:),'MarkerEdgeColor',c(3,:),'Color',[1 1 1],'Markersize',50);  
plot(x, y4, 'Marker','.','MarkerFaceColor',c(4,:),'MarkerEdgeColor',c(4,:),'Color',[1 1 1],'Markersize',50);  
plot(x, y5, 'Marker','.','MarkerFaceColor',c(5,:),'MarkerEdgeColor',c(5,:),'Color',[1 1 1],'Markersize',50); 
leg = legend('N addition', 'Warming', 'CO_2 enrichment', 'Precipitation increased', 'Precipitation decreased');
set(leg, 'Fontsize', 30);
