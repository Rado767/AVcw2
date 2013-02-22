load gt1

files = dir('juggle1\0*.jpg')
files(2).name
figure(1);
for ii = 1:size(files,1)
    bla = strcat('juggle1\', files(ii).name);
    Image = imread(bla);
    imshow(Image);
    hold on;
    plot(gt1(3,ii),gt1(2,ii),'r.');
    plot(gt1(5,ii),gt1(4,ii),'g.');
    plot(gt1(7,ii),gt1(6,ii),'y.');
    drawnow;
    pause(1)
end
