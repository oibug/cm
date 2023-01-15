clc;close all;clear all;
b = [0 1 0 1 1 1 0];
n = length(b);

for i = 1:n
 bw((i*100:(i+1)*100)) = b(i);
end
t = 0:.01:n;
bw = bw(100:end);
subplot(4,1,1); plot(t,bw,"LineWidth",1.5);
title('message signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);

%carrier signals
w0 =(2*pi*2*t); %f0 = 2
w1  =(2*pi*2*t); 
c1 = sin(w0+w1); %f1 4
c0 = sin(w0);
subplot(4,1,2); plot(t,c1,"LineWidth",1.5);
title('carrier signal for 1');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);

subplot(4,1,3); plot(t,c0,"LineWidth",1.5);
title('carrier signal for 0');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);

%fsk
st = sin(w0+(bw).*w1);
% fsk = sin ( w0 + (bw).*w );
subplot(4,1,4); plot(t,st,"LineWidth",1.5);
title('FSK Signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);