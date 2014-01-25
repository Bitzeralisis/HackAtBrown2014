function [confidence] = compare(BW1, x1, y1, orient1, BW2, x2 ,y2, orient2, color)
%rotate images to match orientation
rotate = orient2 - orient1;
BW2 = imrotate(BW2, rotate);

BW1 = center(BW1, x1, y1); 
BW2 = center(BW2, x2, y2);
color2 = center(color, x2, y2);

[rows1, cols2] = size(BW1);
[rows2, cols2] = size(BW2);

diff_rows = rows2 - rows1;
diff_cols = cols2 - cols1;

if(diff_rows > 0)
    BW1 = padarray(BW1, [diff_rows/2 0]);
else
    diff_rows = 0 - diff_rows;
    BW2 = padarray(BW2, [diff_rows/2 0]);
end


if(diff_cols > 0)
    BW1 = padarray(BW1, [0 diff_cols/2]);
else
    diff_cols = 0 - diff_cols;
    BW2 = padarray(BW2, [0 diff_cols/2])
end

for i = 1 : 5
    

end