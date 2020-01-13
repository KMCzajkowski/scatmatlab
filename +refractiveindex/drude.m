classdef drude < handle
    properties
        material
        epsinf
        omegap
        gamma
    end
    
    methods
        function nk=nkdata(obj,wl)
            if ~isempty(obj.drudemat)
                [~,nn,nk]=refractiveindex.drudemat(wl,obj.material);
            else
                [~,nn,nk]=refractiveindex.getDrudeData(wl,...
                    obj.epsinf,obj.omegap,obj.gamma);
            end
            nk=nn+1i*nk;
        end
    end
end
