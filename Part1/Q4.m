clc
clear

A=[0 1 0 0 ;0 -2.2626 -0.3962 0.0082; 0 0 0 1;0 3.5649 16.0655 -0.3324];
B=[0; 0.2263; 0; -0.3565];
C=[1 0 0 0];
D=0;

K=acker(A,B,[-1 -2 -3 -4])
A_ss=0;
A_se=[1 0 0];
A_es=[0;0;0];
A_ee=A(2:4,2:4);
B_s=0;
B_e=B(2:4);
C_s=1;
C_e=[0 0 0];

L=acker(A_ee',(C_s*A_se)',[-2 -3 -4])'
H=B_e-L*C_s*B_s
F=A_ee-L*C_s*A_se
GG=(A_es-L*C_s*A_ss)*inv(C_s)+F*L


