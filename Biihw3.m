close all                  
Ts=1/500;            
t=0:Ts:10;          
x1 = cos(10*pi*t).*[t>=2].*[t<=4];
plotspec(x1,Ts);
xlim([-10,10]) 
hold on;