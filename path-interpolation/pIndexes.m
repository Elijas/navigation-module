% Gives the indexes of q (from the CatmullRomFunction) that correspond to the feature points. Needed to plot feature points when plotting CatmullRomCurve() function
% Inputs
% - [horizontal vector] t: same as given to CatmullRomCurve()
% - [horizontal vector] p: same as given to CatmullRomCurve()
% Outputs
% - [horizontal vector] corresponding element indexes (of the output vector from CatmullRomCurve() function) of the feature points
% Usage Example
% t=linspace(0,1,51)(2:end); p=[9 7 8 5 2 3]; close all;figure;hold on;
% plot(CatmullRomCurve(t, p)); plot( pIndexes(t, p), p, 'o');

function I = pIndexes(t, p)

I = size(t,2)*(0:size(p,2)-1);

end
