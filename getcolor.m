function [color] = getcolor(data, colorscale, maxdata, mindata)

    level_f = (data-mindata)/((maxdata-mindata)/63);
    if (data ==  maxdata)
        level = 63;
    else
        level = ceil(level_f);
    end
    
    if (level > 0)
        color1 = colorscale(level,:);
        color2 = colorscale(level+1,:);
        delta = level-level_f;
        color = (1-delta)*color1+delta*color2;
    else
        color = colorscale(1,:);
    end

end

