lam=500;
n1=1;
n3=1.5;
d2=0.25*lam/sqrt(n1*n3);
n2vec=linspace(n1,n3,100);
%n2vec=sqrt(n1*n3);
%n2vec=n3;

th=0;
k0=2*pi/lam;
ky=k0*n1*sin(th);

R=0.0*n2vec;
pol='te';

for ii=1:numel(n2vec)
    n2=n2vec(ii);
    n=[n1,n2,n3];
    d=[0,d2,0];
    [r,t] = scatmat.multilayerscat(k0,ky,n,d,pol);
    R(ii)=abs(r)^2;
end
figure
plot(n2vec,R)