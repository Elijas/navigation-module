% Interpolates uniformly distributed points between all given feature points
% Inputs
% - [horizontal vector] t: uniformly distributed relative x positions of the interpolated points between each pair of consecutive feature points (same t points for pair). t must belong to the interval (0; 1], with 0 representing the x of the first feature point (when t=0, q=p1) and 1 representing the x of the second one (when t=1, q=p2)
% - [horizontal vector] p: y coordinates of at least 4 feature points (assuming uniform distribution on x axis)
% Outputs
% - [horizontal vector] y values of the uniformly distributed interpolated points
% Usage Example
% t=linspace(0,1,51)(2:end); p=[9 7 8 5 2 3]; close all;figure;hold on; plot(CatmullRomCurve(t, p), '.'); plot( size(t,2)*(0:size(p,2)-1), p, 'o');

function q = CatmullRomCurve(t, p)

p = [p(1)+p(1)-p(2) p p(end)+(p(end)-p(end-1))]; %add additional points, so that interpolation could be done between all p points. The additional points must be symmetrical to the original p endpoints for the spline to end linearly

q = [];
for i = 1:size(p,2)-3
	q = [q CatmullRomSplineVec(t, p(i), p(i+1), p(i+2), p(i+3))];
end

end
