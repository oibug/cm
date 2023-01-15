clc;close all;clear all;
b = [0 1 0 1 1 1 0];
n = length(b);
for i = 1:n
    
 x((i*100:(i+1)*100)) = b(i);

end
%message signal
t = 0:.01:n;
x = x(100:end);
subplot(3,1,1); plot(t,x,"LineWidth",1.6);
title('Message signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 2]);
%carrier signal
m = sin(2*pi*5*t);
subplot(3,1,2); plot(t,m,"LineWidth",1.6);
title('Carrier signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 2]);
%ASK
st = x.*m;
subplot(3,1,3); plot(t,st,"LineWidth",1.6);
title('ASK Signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 2]);