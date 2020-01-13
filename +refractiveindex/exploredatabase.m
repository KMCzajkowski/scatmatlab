function [group,material,name]=exploredatabase()
dir0='database/data';
group=getoption(dir0,'choose group:');
dir0=[dir0,'/',group];
material=getoption(dir0,'choose material:');
dir0=[dir0,'/',material];
name=getoption(dir0,'choose name:');

end

function out=getoption(direc,mes)
wyn0=dir(direc);
wyn0(3:end).name
out=input(mes,'s');
end