% ================================
% Discrete-Time System's TF Analysis in Z-Domain
% Bode, Pole-Zero Map, and Root Locus
% ================================

clc;
clear;
close all;

% Define z-domain transfer function
Ts = 1;                       % Sampling time (1 second)
z = tf('z', Ts);              % Define 'z' as discrete-time variable

% Gz: Digital system transfer function
numerator = 0.000231*z^2 - 0.000299*z + 0.0000742;
denominator = z^3 - 1.9842*z^2 + 0.9842*z + 0.0000742;

Gz = numerator / denominator;

% Bode Plot (Frequency Response)
figure(1);
bode(Gz)
title('Bode Plot of G(z)');
grid on;

% Pole-Zero Map
figure(2);
pzmap(Gz)
title('Pole-Zero Map of G(z)');
zgrid();  % Show unit circle grid for z-domain
grid on;

% Root Locus
figure(3);
rlocus(Gz)
title('Root Locus of G(z)');
axis([-1 1 -1 1]);  % Focus on unit circle
zgrid();           % Add damping/frequency grid
