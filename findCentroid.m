function center = findCentroid(binaryImg) 
[r,c] = find(binaryImg);
center = [mean(r) mean(c)];
end