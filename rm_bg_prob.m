function [ res ] = rm_bg_prob(img, m, v)
%RM_BG_PRB Summary of this function goes here
%   Detailed explanation goes here

[X,Y, ~] = size(img);

for x = 1:X
    for y = 1:Y
        p(1,1) = double(img(x,y,1));
        p(2,1) = double(img(x,y,2));
        p(3,1) = double(img(x,y,3));
        res(x,y) = transpose(p - m{x,y})*v{x,y}*(p - m{x,y});
    end
end
h = max(max(res));
res = res./h;

end