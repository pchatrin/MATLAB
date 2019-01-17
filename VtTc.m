y=[10 20 30 40 50 60 70 80 90]
x=[.4667 .4667 .4667 .5 .5 .5337 .56667 .583335 0.6]
plot(x,polyval(polyfit(x,y,4),x))
title('\Delta Y vs Time (0.23cm)'),xlabel('Time(s)'),ylabel('\Delta Y (cm)'),grid