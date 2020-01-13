function [y,n,k]=getDrudeData(l,ep,e0,g)
w=1239.84./l;
y=e0-(ep)^2./(w.^2+1i*w.*g);
nk=sqrt(y);
n=real(nk);
k=imag(nk);