clc; close all; clear all;

Am = 5;
Ac = 5;
fm = 60;
fc = 200;
b = 0.8;
t = 0 : 0.0001 : 0.1;

%Message Signal
Ym = Am * sin(2*pi*fm*t);
subplot(311);
plot(t,Ym,"LineWidth",1.4); grid on;
title("Message Signal");

%Carrier Signal
Yc = Ac * sin(2*pi*fc*t);
subplot(312);
plot(t,Yc,"LineWidth",1.4); grid on;
title("Carrier Signal");

%Phase Modulated Signal
PM = Ac * sin(2*pi*fc*t + b .* sin(2*pi*fm*t));
subplot(313);
plot(t,PM,"LineWidth",1.4); grid on;
title("Phase Modulation");
