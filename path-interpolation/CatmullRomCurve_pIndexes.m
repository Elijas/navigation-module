% Gives the indexes of q (from the CatmullRomFunction) that correspond to the feature points. Needed to plot feature points on top of the interpolated points from the CatmullRomCurve() function
% Inputs
% - [horizontal vector] p: same as given to CatmullRomCurve()
% - [horizontal vector] density: same as given to CatmullRomCurve()
% Outputs
% - [horizontal vector] corresponding element indexes (of the output vector from CatmullRomCurve() function) of the feature points
% Usage Example
% p=[9 7 8 5 2 3]; density=5; close all;hold on;
% plot(CatmullRomCurve(p, density)); plot( CatmullRomCurve_pIndexes(p, density), p, 'o');

function I = CatmullRomCurve_pIndexes(p, density)

I = density*(0:(size(p,2)-1));

endfunction
