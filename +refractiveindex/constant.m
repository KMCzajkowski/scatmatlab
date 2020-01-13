classdef constant < handle
   properties
      value
   end
   
   methods
     function nk=nkdata(obj,wl)
        nk = obj.value+wl*0;
     end
   end
end
