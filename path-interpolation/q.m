%%% Catmull-Rom Spline Function %%%
% Description: Interpolation of 2 middle points out of four given
% Input: time (relative x of the interpolated point), y coordinates of the four points (must be uniformly distributed on x axis)
% Output: y of the interpolated point
% Note: t (time) is a number in the interval [0,1] that shows the relative x position between the middle points (p1 and p2) (with t=0 being equal p1 and t=1 equal p2))

function ty = q(t, p0, p1, p2, p3)
	ty = 0.5 * [1 t t*t t*t*t] * [0 2 0 0; -1 0 1 0; 2 -5 4 -1; -1 3 -3 1] * [p0; p1; p2; p3];
end