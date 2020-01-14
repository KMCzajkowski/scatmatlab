n1=1;
n2=1.5;
n3=n1;
d2=1;

%n2vec=sqrt(n1*n3);
%n2vec=n3;
small_eps=1e-4;

k0vec=linspace(0,1,N)*2*pi+small_eps;
kyvec=linspace(0,1,N)*2*pi+small_eps;
figure
R=0.0*kyvec;
pol='te';

for ii=1:numel(kyvec)
    for jj=1:numel(k0vec)
        k0=k0vec(jj);
        ky=kyvec(ii);
        
        n=[n1,n2,n3];
        d=[0,d2,0];
        [r,t] = scatmat.multilayerscat(k0,ky,n,d,pol);
        R(jj,ii)=abs(r)^2;
    end
end
hold all
imagesc(kyvec/(2*pi),k0vec/(2*pi),log10(R))
plot(kyvec/(2*pi),k0vec/(2*pi)*n1,'LineWidth',2)
plot(kyvec/(2*pi),k0vec/(2*pi)/n2,'LineWidth',2)
xlabel('ky')
ylabel('k0')
axis xy
xlim([0 1])
ylim([0 1])
colorbar