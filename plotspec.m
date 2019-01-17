% plotspec(x,Ts) plots the spectrum of the signal x
% Ts = time (in seconds) between adjacent samples in x

function plotspec(x,Ts)
N=length(x);                               % length of the signal x
t=Ts*(0:(N-1));                            % define a time vector 
ssf=((-N/2):(N/2-1))/(Ts*N);               % frequency vector
fx=Ts*fft(x(1:N));                         % do DFT/FFT
fxs=fftshift(fx);                          % shift it for plotting
subplot(2,1,1); 
set(plot(t,x),'LineWidth',1.5);            % plot the waveform
xlabel('Seconds');      % label the axes
hold on;
subplot(2,1,2);          
set(plot(ssf,abs(fxs)),'LineWidth',1.5);% plot magnitude spectrum
hold on;
ssin = abs(sinc(2*(ssf-5)) + sinc(2*(ssf+5)));
set(plot(ssf,ssin, 'x'));
xlabel('Frequency [Hz]'); ylabel('Magnitude')   % label the axes
legend({'Plotspec','Analytic'})
hold off;

