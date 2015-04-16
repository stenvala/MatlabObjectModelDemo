classdef polynomialExt < polynomial
  % Class for operating with a polynomial, extended to consider addition of
  % polynomials (note! for this example GetAccess and SetAccess of properties
  % in polynomial was changed to protected)
  %
  methods (Access=public)
    function this = polynomialExt(p)
      this = this@polynomial(p);
    end
    function p = plus(a,b)
      ac = a.p;
      bc = b.p;
      if length(ac) < length(bc)
        ac = [zeros(1,length(bc)-length(ac)) ac];
      end
      if length(bc) < length(ac)
        bc = [zeros(1,length(ac)-length(bc)) bc];
      end
      c = ac+bc;
      % init new polynomial and return it
      p = polynomialExt(c);
    end
  end
end