function filteredImg = filterImg(image)

% Create the gaussian filter with hsize = [5 5] and sigma = 2
filter = fspecial('gaussian',[5 5],5);
filteredImg = imfilter(image,filter,'same');

end