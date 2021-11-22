function [] = visualize(X, labels, name)
% visualize - plots every point in x, blue if labeled -1, red if labeled 1.
% Inputs:
%   X - N*2 matrix with N 2d data points;
%   labels - N*1 matrix with N corresponding labels;

    x = X(:, 1).';
    y = X(:, 2).';
    sz = 6;
    cls = [[0 0 1]; [0 0 0]; [1 0 0]];
    colors = cls(labels + 2, :); 
    
    if nargin == 3
        figure('Name', name);
        scatter(x, y, sz, colors, 'filled');
        title(name);
    else
        figure();
        scatter(x, y, sz, colors, 'filled');
    end
end

