% Polar functions can be drawn by first converting x and y
% variables with the cart2pol function
[x,y] = meshgrid(1:150, 1:100);
[th, r] = cart2pol(x-75, y-50);          % Convert to polar;

% Spiral centered at (75, 50)
Img = sin(r/3 + th);

imagesc(Img);
colormap(hot);
axis image;
axis off;

