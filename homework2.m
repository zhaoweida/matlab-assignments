times=[0:2:24]';
T=[84.3,86.4,85.2,87.1,83.5,84.8,85.0,85.3,85.3,85.2,82.3,84.7,83.6;90.0,89.5,88.6,88.9,88.9,90.4,89.3,89.5,88.9,89.1,89.5,89.4,89.8;86.7,87.6,88.3,85.3,80.3,82.4,83.4,85.4,86.3,85.3,89.0,87.3,87.2]';
m=[times,T];
[a,b]=max(T);
[c,d]=min(T);
n=[a;2*(b-1);c;2*(d-1)]