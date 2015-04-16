classdef polynomial < handle
  % Class for operating with a polynomial  
  %
  
  properties (GetAccess=private,SetAccess=private)
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
    % get coefficients
    function p = getCoeffs(this)
        p = this.p;
    end    
    % get real roots
    function v = getRealRoots(this)
      r = roots(this.p);
      v = r(r == real(r));
    end       
    % set new coefficients
    function setCoeffs(this,p)
      this.p = p;
    end
  end
end