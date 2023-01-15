clc; clear all ; close all;

Am = 5;
Ac = 5;
fm = 50;
fc = 400;
fd = 45;
m = fd/fm;
F = 10000;
T = 1/F;

t = 0 : T : .1;

%Message Signal
Ym = Am .* sin(2*pi*fm*t);
subplot(311);
plot(t,Ym);
title("Message Signal");

%Carrier Signal
Yc = Ac .* sin(2*pi*fc*t);
subplot(312);
plot(t,Yc);
title("Carrier Signal");

%Frequency Modulation
FM = sin(2*pi*fc*t + sin(2*pi*fm*t));
subplot(313);
plot(t,FM);
title("Frequency Modulation");
    
