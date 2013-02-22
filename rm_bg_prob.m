function [ img ] = rm_bg_prob(i, m, v)
%RM_BG_PRB Summary of this function goes here
%   Detailed explanation goes here
img = double(i);
[X,Y, ~] = size(img);

for x = 1:X
    for y = 1:Y
        p(1,1) = double(img(x,y,1));
        p(2,1) = double(img(x,y,2));
        p(3,1) = double(img(x,y,3));
        res(x,y) = transpose(p - m{x,y})*v{x,y}*(p - m{x,y});
    end
end

res = res./max(max(res));
for x = 1:X
    for y = 1:Y
        img(x,y,1) = img(x,y,1)*res(x,y);
        img(x,y,2) = img(x,y,2)*res(x,y);
        img(x,y,3) = img(x,y,3)*res(x,y);
    end
end

end