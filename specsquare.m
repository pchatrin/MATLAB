% specsquare.m plot the spectrum of a square wave
close all
f=300;                       % "frequency" of square wave
%20; 40; 100; 300
time=2;                     % length of time 
Ts=1/1000;                  % time interval between samples
%fs = sampling frequency = 1000 samples/s
t=0:Ts:(time-Ts);           % create a time vector
x=sign(cos(2*pi*f*t));      % square wave = sign of cos wave
plotspec(x,Ts)              % call plotspec to draw spectrum