classdef fromfile < handle
    properties
        file
    end
    
    methods
        function nk=nkdata(obj,wl)
        	[~,nn,nk]=loadnk(wl,obj.file);
            nk=nn+1i*nk;
        end
    end
end
