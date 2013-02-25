function [ img ] = rm_bg_prob_clean( img )
%RM_BG_PROB_CLEAN Summary of this function goes here
%   Detailed explanation goes here
[X, Y, ~] = size(img);

for x = 3:X-2
    for y = 3:Y-2
        if ( sum(img(x,y,:))/sum(sum(sum(img(x-2:x+2,y-2:y+2,:)))) > 0.1)
            img(x,y,:) = [0, 0, 0];
        end
    end
end

