classdef fromdatabase < handle
    properties
        material
        name
        group
    end
    
    methods
        function nk=nkdata(obj,wl)
        	[~,nn,nk]=refractiveindex.readnk(wl,obj.material,obj.name,obj.group);
        	nk=nn+1i*nk;
        end
    end
end
