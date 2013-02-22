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



