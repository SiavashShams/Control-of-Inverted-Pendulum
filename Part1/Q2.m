clc 
clear
A=[0 1 0 0 ;0 -2.2626 -0.3962 0.0082; 0 0 0 1;0 3.5649 16.0655 -0.3324];
B=[0; 0.2263; 0; -0.3565];
C=eye(4,4);
D=[0 0 0 0]';
Abar=[A,zeros(4,1);-C(1,:),zeros(1,1)]
Bbar=[B;0]
rank(ctrb(Abar,Bbar))
K=acker(Abar,Bbar,[-1 -2 -3 -4 -5])