% Interpolates points between given feature points in a 2-dimensional space
% Inputs
% - [matrix Nx2] FP: x and y coordinates of N feature points (1nd and 2nd columns accordingly)
% - [number] density: how many points to interpolate for each pair of consecutive feature points (note: for each feature point pair, one point from the interpolated points will coincide with the second feature point). Given number must be greater than 1
% Outputs
% - [matrix ((N-1)*density)x2] IP: x and y of the interpolated points
% Usage Example
% FP = [2.2 3.7;2 5;3.8 5.6;5 4;4.4 2;3.1 3;1 2]; IP = TwoDimInterpolation(FP, 5); close all;hold on; plot(IP(:,1), IP(:,2), 'x'); plot(FP(:,1), FP(:,2), 'ro');

function IP = TwoDimInterpolation(FP, density)

IP = [CatmullRomCurve(FP(:,1)', density)' CatmullRomCurve(FP(:,2)', density)'];

endfunction

