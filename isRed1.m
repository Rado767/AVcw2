function boolval = isRed1(x,y,z)
rt = 100;
gt = 80;
bt = 100;

if(x > rt && y < gt && z < bt)
    boolval = 1;
else 
    boolval = 0;
end    

end