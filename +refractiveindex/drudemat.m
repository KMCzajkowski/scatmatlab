function [y,n,k]=drudemat(l,mat)
if nargin<3
%for old silver
if strcmp(mat,'silver0')
ep=9.1492;
e0=3;
g=0.133;
end
%for silver
if strcmp(mat,'silver')
ep=9.1492;
e0=3;
g=0.133;
end
%for gold
if strcmp(mat,'gold')
ep=8.91236;
e0=9.0685;
g=0.07593;
end
end

[y,n,k]=getDrudeData(l,ep,e0,g);

end