classdef polynomial < handle
  % Class for operating with a polynomial  
  %
  
  properties (GetAccess=protected,SetAccess=protected)
    p % coeffs
  end
  methods (Access=public)
    % Constructor
    function this = polynomial(p)
      this.p = p;
    end
    % evaluation
    function v = evaluate(this,x)
      v = polyval(this.p,x);
    end
    % get real roots
    function v = getRealRoots(this)
      r = roots(this.p);
      v = r(r == real(r));
    end
  end
end