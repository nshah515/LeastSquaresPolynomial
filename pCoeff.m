%calculates proper degree of coeff, called in MainLSM

function [] = pCoeff(deg,M)
    degCoeff = deg + 1;
    for i=1:degCoeff
       str = " %f ";
       fprintf(str,M(i,1));
       if i == degCoeff
          fprintf("\n"); 
       end
    end
end



