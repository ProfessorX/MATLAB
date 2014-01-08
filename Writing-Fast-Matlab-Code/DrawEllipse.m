% Creat x and y for a width 150, height 100 image
[x,y] = meshgrid(1:150, 1:100);

% Ellipse with origin (60,50) of size 15 x 40
Img = sqrt((x-60).^2 / 15^2) + ((y-50).^2 / 40^2) > 1;

% Plot the image
imagesc(Img);
colormap(copper);
axis image;
axis off;
