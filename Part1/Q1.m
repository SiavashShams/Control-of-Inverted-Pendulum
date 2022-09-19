clc 
clear
A=[0 1 0 0 ;0 -2.2626 -0.3962 0.0082; 0 0 0 1;0 3.5649 16.0655 -0.3324]
B=[0; 0.2263; 0; -0.3565]
C=eye(4,4);
D=[0 0 0 0]'
p_slow=[-1 -2 -3 -4];
p_fast=[-10 -20 -30 -40];
disp("Gains for slow poles")
K_slow=place(A,B,p_slow)
disp("Gains for fast poles")
K_fast=place(A,B,p_fast)