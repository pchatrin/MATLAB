clear all
g=981;
no=8.7;
dT=[50 45 40 35 30 25 20 15];
dTn=[50 45 40 35];
dTnn=50:-0.01:15;
n=[0.7002 0.7753 0.9178 1.1147 1.3834 1.7238 2.1286 2.8661];
nn=[0.7002 0.7753 0.9178 1.1147];
b=(log(nn./no))./(-dTn);
mean(b);
po=7.62;
pi=1.26;
rs=0.09;
rm=0.23;
B=5.295e-4;

nf=no.*exp(-mean(b)*dTnn);
Vtss=(2*g/9).*(po-(pi./(1+B.*dTnn))).*((rs^2)./nf);
%Vtmm=(2*g/9).*(po-(pi./(1+B.*dT))).*((rm^2)./nf)
Vts=[16.5151 14.90718 12.5887 10.35999 8.3441 6.69345 5.418333 4.0223];
%Vtm=[47.6864 41.43786 38.0729 32.72832 30.2534 24.66667 21.5571 17.691];
polyval(polyfit(dT,Vts,4),dT);

hold
plot(dTnn,Vtss,'blue')
plot(dT,polyval(polyfit(dT,Vts,4),dT),'red',dT,Vts,'x')
title('Vt vs \Delta T'),xlabel('\Delta T (C \circ)'),ylabel('Terminal Velocity (cm/s)'),grid
legend('Predicted value','Experimental value','Location','southeast')
%plot(dT,Vtmm)
%plot(dT,Vtm)