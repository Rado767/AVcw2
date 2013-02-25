function img = tryR(image)
[m,n,w] = size(image);
img = double(ones(m,n,w));
for i = 1:m
    for j = 2:n
        if(image(i,j,1) > 60 && image(i,j,2) < 60 && image(i,j,3) < 50)
            img(i,j,1) = image(i,j,1);
            img(i,j,2) = image(i,j,2);
            img(i,j,3) = image(i,j,3);
        else
            img(i,j,1) = 0;
            img(i,j,2) = 0;
            img(i,j,3) = 0;
        end
    end
end
img = uint8(img);
end