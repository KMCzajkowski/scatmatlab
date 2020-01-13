function [eps,n,k]=loadnk(lrange,filename)
    nkdata=importdata(filename); 
    nkdata=nkdata.data;
    n=interp1(nkdata(:,1)*1000,nkdata(:,2),lrange,'spline');
    k=interp1(nkdata(:,1)*1000,nkdata(:,3),lrange,'spline');
    eps=(n+1i*k).^2;
end