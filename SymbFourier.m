syms t w f;                                 % w is $\omega$
syms a positive
S = fourier(exp(-a*t)*sym('heaviside(t)'));   % Find S(w)
S = subs(S,w,2*pi*f)                        % Find S(f)