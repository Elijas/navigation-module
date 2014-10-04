% Interpolates points between the 2 middle feature points, given 4 feature points
% Inputs
% - [horizontal vector] t: relative x positions of the interpolated points between the two middle feature points. t must belong to the interval [0; 1], with 0 representing the x of the first feature point (when t=0, q=p1) and 1 representing the x of the second one (when t=1, q=p2)
% - [numbers] p0, p1, p2, p3: y coordinates of the 4 feature points (assuming uniform distribution on the x axis)
% Outputs
% - [number] q: y of the interpolated points

function q = CatmullRomSplineVec(t, p0, p1, p2, p3)

t=t';
q = 0.5 * [ones(size(t,1), 1) t t.*t t.*t.*t] * [0 2 0 0; -1 0 1 0; 2 -5 4 -1; -1 3 -3 1] * [p0; p1; p2; p3];
q=q';

end
