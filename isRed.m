function boolval = isRed(x,y,z)
a = -10000;
b = 15500;
c = 15500;
d = 1000000;
if(a*x + b*y + c*z + d < 0)
    boolval = 1;
else 
    boolval = 0;
end    

end