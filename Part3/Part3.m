clc 
clear
A=[0 1 0 0 ;0 -2.2626 -0.3962 0.0082; 0 0 0 1;0 3.5649 16.0655 -0.3324];
B=[0; 0.2263; 0; -0.3565];
C=[1 0 0 0];
D=0;
% change poles to see different results
K=acker(A,B,[-3 -3 -3 -3])
P=inv(-C*inv(A-B*K)*B)
[b,a]=ss2tf(A,B,C,D)
zpk(tf(b,a))