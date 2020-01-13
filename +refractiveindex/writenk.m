function writenk(wl,nk,target)
%WRITENK Summary of this function goes here
%   Detailed explanation goes here
if nargin<3
    target='nkfiles/particledata.txt';
end
header = 'wl;n;k\n';
fid=fopen(target,'w');
fprintf(fid,header);
nk=[wl'/1000 real(nk.') imag(nk.')];
dlmwrite(target,nk,'-append','delimiter',';')
end

