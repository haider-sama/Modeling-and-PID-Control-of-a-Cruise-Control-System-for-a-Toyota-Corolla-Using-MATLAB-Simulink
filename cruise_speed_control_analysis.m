% ===========================
%  Vehicle Speed Control System
%  Continuous to Discrete Conversion with Analysis
%  ===========================

clc;
clear;
close all;

% System Parameters
m = 1084;          % Mass of the vehicle (kg)
b = 17;            % Damping coefficient (N·s/m)
u = 475.72;        % Nominal force input (N)
r = 27.78;         % Desired speed (m/s)

% Continuous-Time Transfer Function (s-domain)
% G(s) = 1 / (ms + b)
numerator = 1;
denominator = [m, b];            % [mass, damping]
s = tf('s');
Gs = tf(numerator, denominator); % Continuous-time transfer function
Gs

% PID Controller Design
Kp = 1200;   % Proportional gain (tune as needed)
Ki = 10;     % Integral gain
Kd = 0;      % Derivative gain
Gc = pid(Kp, Ki, Kd);    % PID controller

% Closed-Loop System (Continuous-Time)
sys_cl = feedback(Gc * Gs, 1);  % Unity feedback

% Step Response of Continuous System
% Simulate the response to a step input of magnitude 'u'
figure;
step(u * Gs)
title('Step Response of Continuous-Time System');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
grid on;

% Step Info
disp('Step Response Info (Continuous):');
stepinfo(u * sys_cl)

% Damping Characteristics
disp('Damping Characteristics (Continuous):');
damp(sys_cl)

% Convert to Discrete-Time System (z-domain)
Ts = 1;                  % Sampling time (seconds)
Gz = c2d(Gs, Ts);        % Discrete-time transfer function (default method: ZOH)
Gz

% Pole-Zero Map of Discrete-Time System
figure;
pzmap(Gz)
title('Pole-Zero Map of Discrete-Time System');
grid on;
axis([-1.2 1.2 -1.2 1.2]);  % Focus around the unit circle

% Bode Plot of Discrete-Time System
figure;
bode(Gz)
title('Bode Plot of Discrete-Time System');
grid on;
