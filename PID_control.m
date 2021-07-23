clc; 
clear all;
s = tf('s');
P = 1/(s^2 + 10*s + 20);
step(P)
% PID control
Kp = 350;
Ki = 300;
Kd = 50;
C = pid(Kp,Ki,Kd);
T = feedback(C*P,1);

t = 0:0.01:2;
step(T,t)
