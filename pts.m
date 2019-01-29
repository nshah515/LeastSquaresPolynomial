%fill pts

function [x,y] = pts(mat,n)
    x = zeros(1);
    y = zeros(1);
    pointsPtr = 1;
    for i = 3:2:(2 + (2*n))
       x(pointsPtr,1) = mat(i,1);
       y(pointsPtr,1) = mat(i+1,1);
       pointsPtr = pointsPtr + 1;
    end
        

end