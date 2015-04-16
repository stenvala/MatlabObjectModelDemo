classdef polynomialRtoR < RtoRfunction
  % Class for operating with a polynomial  
  %
  
  properties (GetAccess=private,SetAccess=private)
    p % coeffs
  end
  methods (Access=public)
    % Constructor
    function this = polynomialRtoR(p)      
      syms('x');           
      this = this@RtoRfunction(x.^((length(p)-1):-1:0)*p');         
      this.p = p;
    end    
    % get real roots
    function v = getRealRoots(this)
      r = roots(this.p);
      v = r(r == real(r));
    end    
  end  
end