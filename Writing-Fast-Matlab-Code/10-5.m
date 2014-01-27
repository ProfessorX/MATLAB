% Upsampling and downsampling
% upsample x by factor p
y = zeros(length(x)*p-p+1, 1);          % for trailing zeros, use y
                                        % = zeros(length(x)*p, 1);

% downsample x by factor p, where 1<=q<=p
y(q:p:end);
