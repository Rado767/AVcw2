function [ mu_, covar_ ] = rm_bg_prob_reference( data_set )
%RM_BG_PROB_REGERENCE Summary of this function goes here
%   Detailed explanation goes here
d_size = 5;

[x, y, ~] = size(data_set{1});
%mu_ = cell(x,y);


covar_ = cell(x,y);
mu_ = cell(x,y);

for xi = 1:x
    for yi = 1:y
        d = zeros(d_size,3);
        for i = 1:d_size
            d(i,:) = reshape(data_set{i}(xi,yi,:),1,3);
        end
        mu_{xi,yi} = transpose(mean(d));
        covar_{xi,yi} = pinv(cov(d));
    end
end

end
    
