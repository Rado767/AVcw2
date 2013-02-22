function subtracted = subtractBackground(image, background)
[m,c,w] = size(image);
subtracted = ones(m,c,w); % allocate memory for the resulting image

%Work on each color

r = image(:,:,1);
g = image(:,:,2);
b = image(:,:,3);
rb = background(:,:,1);
gb = background(:,:,2);
bb = background(:,:,3);

thresholdR = 5;
thresholdG = 5;
thresholdB = 35;

%Do subtraction 
for i = 1: m
    for j = 1:c
        if(abs(r(i,j) - rb(i,j)) > thresholdR)
            subtracted(i,j,1) = r(i,j);
        else
            subtracted(i,j,1) = 0; 
        end    
        if(abs(g(i,j) - gb(i,j)) > thresholdG)
            subtracted(i,j,2) = g(i,j);
        else
            subtracted(i,j,2) = 0;
        end    
        if(abs(b(i,j) - bb(i,j)) > thresholdB)
            subtracted(i,j,3) = b(i,j);
        else
            subtracted(i,j,3) = 0;
        end    
    end
end    
        
end