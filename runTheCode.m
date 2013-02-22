function ans = runTheCode()
images = getImages('juggle1\');
background = imread('background.jpg');
background(:,:,1) = background(:,:,1);
background(:,:,2) = background(:,:,2);
I =filterImg(images{15});
figure(1)
imshow(I)
B =  filterImg(background);
figure(2)
imshow(B)
figure(4)
imshow(I-B)
new = subtractBackground(I, B);
figure(3)
imshow(new(:,:,1));

%figure(1)
%imshow(normalizeRGB(images{1}));
%figure(2)
%imshow(normalizeRGB(background));
%figure(4)
%imshow(images{1})
%figure(1)
%imshow(normalizeRGB(images{1}))
%figure(2)
%imshow(normalizeRGB(images{2}))
%figure(3)

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



