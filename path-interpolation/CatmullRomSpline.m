% Interpolates a point between the 2 middle feature points, given 4 feature points
% Inputs
% - [number] t: relative x position of an interpolated point etween the two middle feature points. t must belong to the interval [0; 1], with 0 representing the x of the first feature point (when t=0, q=p1) and 1 representing the x of the second one (when t=1, q=p2)
% - [numbers] p0, p1, p2, p3: y coordinates of the 4 feature points (assuming uniform distribution on the x axis)
% Outputs
% - [number] q: y of the interpolated point

function q = CatmullRomSplineNum(t, p0, p1, p2, p3)

q = 0.5 * [1 t t*t t*t*t] * [0 2 0 0; -1 0 1 0; 2 -5 4 -1; -1 3 -3 1] * [p0; p1; p2; p3];

end
