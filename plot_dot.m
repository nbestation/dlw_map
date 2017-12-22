function [ output_args ] = plot_dot(label,color)
dot_data(1).Geometry = 'Point';
dot_data(1).Lon = label(1);
dot_data(1).Lat = label(2);
dot_data(1).Name = 'xxxx';
geoshow(dot_data, 'Marker', '*', 'Color', [1,1,1])

end

