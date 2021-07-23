clc;
clear all;
% We can define a PID controller in MATLAB
Kp = 1;
Ki = 1;
Kd = 1;
s = tf("s");
C = Kp + Ki/s + Kd*s