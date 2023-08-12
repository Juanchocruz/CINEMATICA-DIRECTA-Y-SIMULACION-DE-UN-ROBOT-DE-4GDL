clc
q1 = 0;
q2 = 0;
q3 = 0;
q4 = 0;

L1 = 270;
L2 = 250;
L3 = 240;
L4 = 90;

T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5