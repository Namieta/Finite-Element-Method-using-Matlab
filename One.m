% Parameters
M = 1;  % Mass of the cart
g = 9.81;  % Gravitational constant
l = 1;  % Length of the pendulum

% State-space model
A = [0 1; g/l 0];  % State matrix
B = [0; 1/M];  % Input matrix
C = [1 0];  % Output matrix
D = 0;  % Feedthrough matrix

% Transfer function
sys = ss(A, B, C, D);
G = tf(sys);  % Transfer function of the pendulum system

% Lead compensator design (you can use other types like PID, lag, etc.)
s = tf('s');
lead_comp = (10*s + 1)/(0.1*s + 1);  % Example lead compensator

% Open-loop transfer function
L = lead_comp * G;

% Bode plot to visualize loop shape
figure;
bode(L);

% Check gain margin and phase margin
margin(L);

% Closed-loop transfer function
T = feedback(L, 1);

% Step response of the closed-loop system
figure;
step(T);
