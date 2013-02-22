function m = getMeanBackground(images)
[r,t] = size(images{1}(:,:,1));
m = double(ones(r,t,3));
num = 0;
for i = [2:4:length(images)]
    num = num + 1;
    for p=1:480
        for j = 1:640
            m(p,j,1) = m(p,j,1) + double(images{i}(p,j,1));   
            m(p,j,2) = m(p,j,2) + double(images{i}(p,j,2));  
            m(p,j,3) = m(p,j,3) + double(images{i}(p,j,3));  
        end
    end    
end
m;
num;
m = m./num;
end