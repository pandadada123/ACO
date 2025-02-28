function [] = visualize(X, labels, w, b, name)
% visualize - plots every point in x, blue if labeled -1, red if labeled 1.
    x = X(:, 1).';
    y = X(:, 2).';
    sz = 6;
    cls = [[0 0 1]; [0 0 0]; [1 0 0]];
    colors = cls(labels + 2, :); 
    
    figure('Name', name);
    scatter(x, y, sz, colors, 'filled');
    hold on
    maxy = max(y);
    miny = min(y);
    yp = miny : (maxy-miny)/10 : maxy;
    xp = -(w(2)*yp+b) / w(1);
    plot(xp,yp);
    
    title(name);
end

