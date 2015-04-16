classdef R2toRfunction < handle
  % Class for operating with a R^2->R function
  %
  
  properties (GetAccess=private,SetAccess=private)
    fun % function
    funMatlab % corresponding matlab function
    grad % gradient
    gradMatlab % corresponding matlab function    
  end
  methods (Access=public)
    % Constructor (cannot be in separate file)
    function this = R2toRfunction(fun,var1,var2)
      this.fun = fun;
      this.funMatlab = matlabFunction(fun);          
      this.grad = [diff(fun,var1); diff(fun,var2)];
      this.gradMatlab = matlabFunction(this.grad);
    end
    % note only method introductions
    v = evaluate(this,x,y)
    v = evaluateGrad(this,x,y)
    plotContour(this,x,y,varargin)
    plotGrad(this,x,y,varargin)
  end
end