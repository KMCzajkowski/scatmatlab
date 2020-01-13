ri=refractiveindex.fromdatabase;
ri.group='main';
ri.material='Au';
ri.name='Ciesielski';

lam=800;
nau=ri.nkdata(lam);

n1=1.5;
n2=nau;
%n2=sqrt(-25+1.44i);
n3=1.33;
d2=40;

%n2vec=sqrt(n1*n3);
%n2vec=n3;

thvec=65:0.01:75;
k0=2*pi/lam;

R=0.0*thvec;
pol='tm';

for ii=1:numel(thvec)
    th=thvec(ii)*pi/180;
    ky=k0*n1*sin(th);
    n=[n1,n2,n3];
    d=[0,d2,0];
    [r,t] = scatmat.multilayerscat(k0,ky,n,d,pol);
    R(ii)=abs(r)^2;
end
figure
plot(thvec,R)