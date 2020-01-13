function [ r,t ] = fresnel(eps_1,eps_2,ky,pol)
%FRESNEL Summary of this function goes here
%   Detailed explanation goes here
kix=sqrt(eps_1-ky^2); % in k0 units
ktx=sqrt(eps_2-ky^2); % in k0 units
if strcmp(pol,'tm')
    r=(eps_1*ktx-eps_2*kix)/(eps_1*ktx+eps_2*kix);
elseif strcmp(pol,'te')
    r=(ktx-kix)/(ktx+kix);
end
t=1-r;
end

