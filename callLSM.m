function [C,D] = callLSM(x,y,deg,n)
    C = zeros(deg+1);
    D = zeros(1);
    C(1,1) = n;
    
    % fill first row (where 1 is pointing to)
    for i = 2:deg+1
        C(1,i) = sum( x.^(i-1) );
    end
    
    % Calculate matrix C and D
    for j = 2:deg+1
       for k = 1:deg+1
          C(j,k) = sum( x.^( (j-1) + (k-1) ) );
       end
    end
    for p = 1:deg+1
       D(p,1) = sum( y .* ( x.^(p-1) ) ); 
    end
    
end