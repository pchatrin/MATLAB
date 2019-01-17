clear all
no=8.7;
n=[0.7002 0.7753 0.9178 1.1147 1.3834 1.7238 2.1286 2.8661];
nn=[0.7002 0.7753 0.9178 1.1147];
g=981;
B=5.295e-4;
po=7.62;
pi=1.26;
rs=0.09;
rm=0.23;
dT=[50 45 40 35 30 25 20 15];
dTn=[50 45 40 35];
dTnn=50:-0.01:15;
Vts=[16.5151 14.90718 12.5887 10.35999 8.3441 6.69345 5.418333 4.0223];

ns=(2*g/9).*(po-(pi./(1+B.*dT))).*((rs^2)./Vts);
%nm=(2*g/9).*(po-(pi./(1+B.*dT))).*((rm^2)./Vtm);
%navg=(ns+nm)./2;
b=(log(nn./no))./(-dTn);
nf=no.*exp(-mean(b)*dTnn);

hold
plot(dTnn,nf,'blue')
plot(dT,polyval(polyfit(dT,ns,4),dT),'red',dT,ns,'x')
plot(dT,nm,'black')
%plot(dT,navg,'green')
title('\eta vs \Delta T'),xlabel('\Delta T (C \circ)'),ylabel('Viscosity(g/cm \cdot s)'),grid
%legend('Predicted value','Experimental value','Location','southwest')
