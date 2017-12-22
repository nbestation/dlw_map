clc, clear all, close all
ax = worldmap('World');  
load coast  
plotm(lat, long) 
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.8, 0.6, 0.8])

colormin = [0.3, 0.9, 0.9];
colormax = [0.9, 0.9, 0.3];
colorscale = zeros(100,3);
for i = 1:100
    colorscale(i,1) = (i-1)*(colormax(1) - colormin(1))/(100-1)+ colormin(1);
    colorscale(i,2) = (i-1)*(colormax(2) - colormin(2))/(100-1)+ colormin(2);
    colorscale(i,3) = (i-1)*(colormax(3) - colormin(3))/(100-1)+ colormin(3);
end
colormap(colorscale);

A = zeros(100,2);
for i = 1:100
    A(i,1) = rand()*360-180;
    A(i,2) = rand()*180-90; 
    A(i,3) = rand()*80-35;
end
maxtemp = max(A(:,3));
mintemp = min(A(:,3));



C=zeros(100,3);
for i = 1:100
    C(i,1) = (A(i,3)-mintemp)/(maxtemp-mintemp)*(colormax(1)-colormin(1))+colormin(1);
    C(i,2) = (A(i,3)-mintemp)/(maxtemp-mintemp)*(colormax(2)-colormin(2))+colormin(2);
    C(i,3) = (A(i,3)-mintemp)/(maxtemp-mintemp)*(colormax(3)-colormin(3))+colormin(3);
end


for i = 1:100
    geoshow(A(i,2),A(i,1), 'DisplayType','Point','Marker','.','MarkerEdgeColor', C(i,:),'Markersize',12);
end
colorbar
colorbar('Ticks',[0,0.25,0.5,0.75,1],'TickLabels',{num2str(mintemp),num2str(mintemp*0.75+maxtemp*0.25),num2str(mintemp*0.5+maxtemp*0.5),num2str(mintemp*0.25+maxtemp*0.75),num2str(maxtemp)})