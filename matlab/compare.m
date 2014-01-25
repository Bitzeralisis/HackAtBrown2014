function [confidence] = compare(BW1, x1, y1, orient, BW2, x2 ,y2, orient2)

rotate = orient2 - orient1;
BW2 = imrotate(BW2, rotate);
diff_x = x2 - x1;
diff_rows = (size(BW2, 1) - y2) - (size(BW1,1) - y1);


%put the centroids at the same point
if(diff_x < 0)
    %need to pad BW2
    pad = zeros(size(BW2,1), diff_x);
    horzcat(pad, BW2);
else
    pad = zeros(size(BW1,1), diff_x);
    horzcat(pad, BW1);
end

if(diff_rows < 0)
    pad = zeros(size(BW2,2), diff_rows);
    vertcat(pad, BW2);
else
    pad = zeros(size(BW1,2), diff_rows);
    vertcat(pad, BW1);
end



end