%% Drawing lines is just a change in the formula.
% Now you will taste the power of Mathematics
[x,y] = meshgrid(1:150, 1:100);

% The line y = x*0.8 + 20
Img = ((abs(x*0.8+20) - y) > 1);

imagesc(Img);
colormap(copper);
axis image;
axis off;
