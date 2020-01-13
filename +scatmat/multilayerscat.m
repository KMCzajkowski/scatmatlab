function [r,t] = multilayerscat(k0,ky,n,d,pol)
%MULTILAYERSCAT Summary of this function goes here
%   Detailed explanation goes here
ky0=ky/k0;
Nl=numel(n);
S1=scatmat.layerscat(n(1),n(2),ky0,pol);
for ii=2:Nl-1
S2=scatmat.layerscat(n(ii),n(ii+1),ky0,pol);
phi=scatmat.calcphi(n(ii),d(ii),k0,ky);
S1 = scatmat.airy(S1,S2,phi);
end
t=S1(1,1);
r=S1(2,1);
end

