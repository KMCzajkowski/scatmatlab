function [eps,n,k]=readnk(lrange,material,name,group)
if nargin<3
    group='main';
end
filename=['database/data/',group,'/',material,'/',name,'.yml'];
result = refractiveindex.YAMLMatlab.ReadYaml(filename);
nk0=result.DATA{1, 1}.data;
nkdata=str2num(nk0);
n=interp1(nkdata(:,1)*1000,nkdata(:,2),lrange,'pchip');
k=interp1(nkdata(:,1)*1000,nkdata(:,3),lrange,'pchip');
eps=(n+1i*k).^2;
end