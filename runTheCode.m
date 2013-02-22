function ans = runTheCode()
images = getImages('juggle1\');
figure(4)
imshow(images{1})
figure(1)
imshow(normalizeRGB(images{1}))
figure(2)
imshow(normalizeRGB(images{2}))
%[r,c,w] = size(images{1});

%r = images{1}(:,:,1);
%g = images{1}(:,:,2);
%b = images{1}(:,:,3);
%figure(1)
%imshow(r);
%figure(2)
%imshow(g);
%figure(3);
%imshow(b);
end

function images = getImages(directory) % Function to load images from a given directory 
extention = '*.jpg';
path = strcat(directory,extention);
imagefiles = dir(path);      

nfiles = length(imagefiles);    % Number of files found
for i=1:nfiles
   currentfilename = imagefiles(i).name;
   fullname = strcat(directory,currentfilename);
   currentimage = imread(fullname);
   images{i} = currentimage;    % Return all images 
end
end

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