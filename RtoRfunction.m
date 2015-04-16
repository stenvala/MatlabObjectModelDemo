classdef RtoRfunction < handle
  % Class for operating with a R->R function
  %
  
  properties (GetAccess=private,SetAccess=private)
    fun % function
    funMatlab % corresponding matlab function    
  end
  methods (Access=public)
    % Constructor
    function this = RtoRfunction(fun)
      this.fun{1} = fun;
      this.funMatlab{1} =  matlabFunction(fun);
    end
    % evaluation
    function v = evaluate(this,x,ord)
      if nargin < 3
        ord = 0;
      end
      index = ord+1;
      this.confirmOrder(index);
      v = this.funMatlab{index}(x);
    end
    % get function handle
    function f = getAsMatlabFunction(this,ord)
      if nargin < 2
        ord = 0;
      end
      index = ord+1;
      this.confirmOrder(index);
      f = this.funMatlab{index};
    end
    % get symbolic function
    function f = getAsSymbolicFunction(this,ord)
      if nargin < 2
        ord = 0;
      end
      index = ord+1;
      this.confirmOrder(index);
      f = this.fun{index};
    end
    % solve root at given interval
    function s = getRoot(this,interval,ord,opts)
      if nargin < 4
        opts = [];
      end
      if nargin < 3
        ord = 0;
      end
      index = ord+1;
      this.confirmOrder(index);
      zeroFun = @(x) this.evaluate(x,ord);
      s = fzero(zeroFun,interval,opts);
    end
  end
  methods (Access=private)
    function confirmOrder(this,index)
      while length(this.fun) < index
        this.orderHigherDerivative();
      end
    end
    function orderHigherDerivative(this)
      this.fun{end+1} = diff(this.fun{end});
      this.funMatlab{end+1} = matlabFunction(this.fun{end});
    end
  end
end