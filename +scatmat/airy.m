function S = airy(S1,S2,phi)
%AIRY Summary of this function goes here
%   Detailed explanation goes here
t12=S1(1,1);r21=S1(1,2);r12=S1(2,1);t21=S1(2,2);
t23=S2(1,1);r32=S2(1,2);r23=S2(2,1);t32=S2(2,2);
t13=(t12*t23*exp(1i*phi))/(1-r21*r23*exp(2i*phi));
r13=r12+(t21*r23*t12*exp(2i*phi))/(1-r21*r23*exp(2i*phi));
t31=(t32*t21*exp(1i*phi))/(1-r23*r21*exp(2i*phi));
r31=r32+(t23*r21*t32*exp(2i*phi))/(1-r23*r21*exp(2i*phi));

S=[t13 r31; r13 t31];
end

