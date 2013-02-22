function images = getImages(directory) % Function to load images from a given directory 
extention = '*.jpg';
path = strcat(directory,extention);
imagefiles = dir(path);      

nfiles = length(imagefiles);    % Number of files found
for i=1:nfiles
   currentfilename = imagefiles(i).name;
   fullname = strcat(directory,currentfilename);
   currentimage = imread(fullname);
   images{i} = currentimage;    % Return all images 
end
end