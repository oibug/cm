clc; clear all; close all;
Am = 5;
Ac = 5;
fm = 60;
fc = 350;
F = 10000;
T = 1/F;
m = 1;

t = 0 : T : 0.1;

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

%Modulated Signal
AM = Ac*sin(2*pi*fc*t) .* (1+m*sin(2*pi*fm*t));
subplot(313);
plot(t,AM,"LineWidth",1.5);
title("AM Modulated Signal");



