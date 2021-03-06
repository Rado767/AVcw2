function chromCoordImg = normalizeRGB(image) % Function to obtain CHROMATICITY COORDINATES
[r,c,w] = size(image);
chromCoordImg = double(ones(r,c,w));
image = double(image);
for i=1:r
    for j=1:c
        n = image(i,j,1) + image(i,j,2) + image(i,j,3);
        n = double(n);
        chromCoordImg(i,j,1) = (image(i,j,1)/n)*255;
        chromCoordImg(i,j,2) = (image(i,j,2)/n)*255;
        chromCoordImg(i,j,3) = (image(i,j,3)/n)*255;
    end
end
chromCoordImg = uint8(chromCoordImg);   
end