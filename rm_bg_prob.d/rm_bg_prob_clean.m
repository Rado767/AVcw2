function [ img ] = rm_bg_prob_clean( img )
%RM_BG_PROB_CLEAN Summary of this function goes here
%   Detailed explanation goes here
[X, Y] = size(img);

for x = 2:X-1
    for y = 2:Y-1
        if (img(x,y)/sum(sum(img(x-1:x+1,y-1:y+1))) > 0.6)
            img(x,y) = 0;
        end
    end
end

