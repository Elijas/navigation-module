% Interpolates uniformly distributed points between all given feature points
% Inputs
% - [horizontal vector] p: y coordinates of the feature points (assuming uniform distribution on x axis)
% - [number] density: how many points to interpolate for each pair of consecutive feature points (note: for each feature point pair, one point from the interpolated points will coincide with the second feature point). Given number must be greater than 1
% Outputs
% - [horizontal vector] y values of the interpolated points
% Usage Example
% p=[9 7 8 5 2 3]; close all; plot(CatmullRomCurve(p, 50), '.');

function q = CatmullRomCurve(p, density)

p = [p(1)+p(1)-p(2) p p(end)+(p(end)-p(end-1))]; %add additional points, so that interpolation could be done between all points from p. The additional points must be symmetrical to the original p endpoints for the spline to end linearly

t = linspace(0, 1, density+1)(2:end); %relative x positions (with uniform density) of the interpolated points between the feature points

q = [];
for i = 1:size(p,2)-3; %gluing each spline into a curve
	q = [q CatmullRomSpline(t, p(i), p(i+1), p(i+2), p(i+3))];
end

endfunction
