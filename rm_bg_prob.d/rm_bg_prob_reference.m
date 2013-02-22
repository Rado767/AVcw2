function [ mu_, covar_ ] = rm_bg_prob_reference( data_set )
%RM_BG_PROB_REGERENCE Summary of this function goes here
%   Detailed explanation goes here
d_size = 5; %length(data_set);

[x, y, ~] = size(data_set{1});
%mu_ = cell(x,y);

%pixel = zeros(3,1);
%covar_ = cell(x,y);

for xi = 1:x
    for yi = 1:y
        
        mu_{xi, yi}(1,1) = 0;
        mu_{xi, yi}(2,1) = 0;
        mu_{xi, yi}(3,1) = 0;
        for i = 1:d_size
            mu_{xi,yi}(1,1) = mu_{xi,yi}(1,1) + double(data_set{i}(xi,yi,1))/d_size;
            mu_{xi,yi}(2,1) = mu_{xi,yi}(2,1) + double(data_set{i}(xi,yi,2))/d_size;
            mu_{xi,yi}(3,1) = mu_{xi,yi}(3,1) + double(data_set{i}(xi,yi,3))/d_size;
        end
        
        covar_{xi, yi}(1,1) = 0;
        covar_{xi, yi}(2,1) = 0;
        covar_{xi, yi}(3,1) = 0;
        covar_{xi, yi}(1,2) = 0;
        covar_{xi, yi}(2,2) = 0;
        covar_{xi, yi}(3,2) = 0;
        covar_{xi, yi}(1,3) = 0;
        covar_{xi, yi}(2,3) = 0;
        covar_{xi, yi}(3,3) = 0;
        for i = 1:d_size
            pixel(1,1) = double(data_set{i}(xi,yi,1));
            pixel(2,1) = double(data_set{i}(xi,yi,2));
            pixel(3,1) = double(data_set{i}(xi,yi,3));
            covar_{xi, yi} = covar_{xi, yi} + (pixel - mu_{xi,yi})*transpose(pixel - mu_{xi,yi})/d_size;
        end
        covar_{xi,yi} = pinv(covar_{xi,yi});
    end
end

end
    
