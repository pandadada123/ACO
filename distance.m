function dist = distance(w, b, x, class)
% dist - calculates the distance to hyperplane wx+b=0.
% Inputs:
%   w - the direction of the hyperplane
%   b - the offset of the hyperplane
%   x - the point
%   class - the class of point x, -1 or 1
    dist = class * (w * x + b) / norm(w);
end