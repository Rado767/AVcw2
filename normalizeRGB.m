function chromCoordImg = normalizeRGB(image) % Function to obtain CHROMATICITY COORDINATES
[r,c,w] = size(image);
chromCoordImg = zeros(r,c,w);
for i=1:r
    for j=1:c
        n = image(i,j,1) + image(i,j,2) + image(i,j,3);
        chromCoordImg(i,j,1) = image(i,j,1)/n;
        chromCoordImg(i,j,2) = image(i,j,2)/n;
        chromCoordImg(i,j,3) = image(i,j,3)/n;
    end
end
end