close all                  
Ts=1/500;            
t=0:Ts:10;          
x = cos(10*pi*t).*[t>=2].*[t<=4];
disp(x)
plotspec(x,Ts)

xlim([-10,10])