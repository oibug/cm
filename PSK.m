clc;close all;clear all;
b = [0 1 0 1];
b1 = b;
n = length(b);

for i = 1 : n
    x((i*100) :(i+1)*100) = b(i);
end 
x = x(100:end);
t = 0 : (1/100) : n;
subplot(3,1,1);
plot(t ,x,"LineWidth",1.5);
title('Message Signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);

for i = 1: n
    if b1(i)== 0
        b1(i)= -1;
    else
        b1(i)=1;
    end
    x1((i*100) : (i+1)*100) = b1(i);
end
x1= x1(100:end);

c = sin(2*pi*2*t);
subplot(3,1,2);
plot(t,c,"LineWidth",1.5);
title('Carrier Signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);

%psk signal
psk = x1.*c ;
subplot(3,1,3);
plot(t,psk,"LineWidth",1.5);
title('PSK Signal');
xlabel('time->'); ylabel('Amplitude->');
grid on ; axis([0 n -2 +2]);



