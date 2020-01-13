function S = layerscat(n1,n2,ky0,pol)
%LAYERSCAT Summary of this function goes here
%   Detailed explanation goes here
eps_1=n1^2;eps_2=n2^2;
r = scatmat.fresnel(eps_1,eps_2,ky0,pol);
S=[1-r r;-r 1+r];
end

