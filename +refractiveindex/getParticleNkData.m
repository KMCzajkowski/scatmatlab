function getParticleNkData(obj)
disp('getting particle refractive index')
switch obj.particle.nktype
    case 'database'
        [~,nn,nk]=readnk(obj.wavelength,obj.particle.dbmaterial,obj.particle.dbname,obj.particle.dbgroup);
        obj.particle.nk=nn+1i*nk;
    case 'file'
        [~,nn,nk]=loadnk(obj.wavelength,obj.particle.nkfile);
        obj.particle.nk=nn+1i*nk;
    case 'const'
        obj.particle.nk=0*obj.wavelength+obj.particle.nkconst;
    case 'drude'
        if isfield(obj.particle,'drudemat')
            [~,nn,nk]=drudemat(obj.wavelength,obj.particle.drudemat);
        else
            [~,nn,nk]=getDrudeData(obj.wavelength,...
                obj.particle.drudeepsinf,obj.particle.drudeomegap,...
                obj.particle.drudegamma);
        end
        obj.particle.nk=nn+1i*nk;
    otherwise
        error('wrong nk data type');
end
if strcmp(obj.particle.type,'disk')
    writenk(obj.wavelength,obj.particle.nk);
end
end