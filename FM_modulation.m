clc; clear all ; close all;

Am = 20;
Ac = 20;
fm = 10;
fc = 50;
fd =30;
m = fd/fm;

t = 0 : 0.0001 : 0.5;

%Message Signal
Ym = Am * sin(2*pi*fm*t);
subplot(311);
plot(t,Ym,"LineWidth",1.5);
title("Message Signal");

%Carrier Signal
Yc = Ac * sin(2*pi*fc*t);
subplot(312);
plot(t,Yc,"LineWidth",1.5);
title("Carrier Signal");

%Frequency Modulation
FM = Ac * sin(2*pi*fc*t + (m .* -cos(2*pi*fm*t)));
subplot(313);
plot(t,FM,"LineWidth",1.5);
title("Frequency Modulation");
    
