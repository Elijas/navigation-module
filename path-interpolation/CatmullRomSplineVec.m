%%% Catmull-Rom Spline Function %%%
% Description: Given 4 points, interpolates a point between the 2 middle points

% Inputs:
% - [horizontal vector] t (time) the relative x position of the interpolated point between the middle points (y1 and y2). It is a number in the interval [0,1], with t=0 being y=y1 and t=1 equal y2))
% - [number] y coordinates of the four feature points (must be uniformly distributed on x axis)
% Output: 
% - [number] y of the interpolated point

function q = CatmullRomSpline(t, y0, y1, y2, y3)
	q = zeros(1,size(t,2));
	for i=1:size(t,2)
		q(i) = 0.5 * [1 t(i) t(i)*t(i) t(i)*t(i)*t(i)] * [0 2 0 0; -1 0 1 0; 2 -5 4 -1; -1 3 -3 1] * [y0; y1; y2; y3];
	end
end
