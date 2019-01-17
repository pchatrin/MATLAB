function X = FTofManyShiftedRect(A,f,T,m)
syms t;
P = int(A*exp(-j*2*pi*f*t),t,0,T);
Pt = 0;
for k = 0:(length(m)-1)
    Pt = Pt + m(k+1)*exp(-j*2*pi*f*k*T);
end
X = abs(P*Pt);