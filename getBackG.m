function final = getBackG(img, back)
[m,n,w] = size(img);
final = double(ones(m,n,w));
alpha = 1.1;
beta = 0.9;
for i = 1:m
    for j = 1:n
        if(img(i,j,1)/back(i,j,1) > alpha || img(i,j,1)/back(i,j,1)< beta || img(i,j,2)/back(i,j,2) > alpha || img(i,j,2)/back(i,j,2)< beta || img(i,j,3)/back(i,j,3) > alpha || img(i,j,3)/back(i,j,3)< beta )
            final(i,j,1) =(img(i,j,1));
            final(i,j,2) = (img(i,j,2));
            final(i,j,3) = (img(i,j,3));
        else
            final(i,j,1) = 0; 
            final(i,j,2) = 0; 
            final(i,j,3) = 0;
        end
    end
end
final = uint8(final);
end
            
            