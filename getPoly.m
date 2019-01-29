function yy = getPoly(M,xx,deg)

    yy = M(1,1);
    for i = 1:deg
        yy = yy + ( M(i+1,1) .* (xx.^(i)) );
    end
    
end
