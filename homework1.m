q=8000;
r=1.987;
k0=1200;
T=100;
A=zeros(2,9);
i=1;
while T<=500
    k=k0*2.718^(-q/(r*T));
    A(1,i)=T;
    A(2,i)=k;
    T=T+50;
    i=i+1;
end
A