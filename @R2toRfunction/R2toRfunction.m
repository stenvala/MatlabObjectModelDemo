classdef R2toRfunction < handle
  % Class for operating with a R^2->R function
  %
  
  properties (GetAccess=private,SetAccess=private)
    fun % function
    funMatlab % corresponding matlab function
    grad
    gradMatlab
    var % variables
  end
  methods (Access=public)
    % Constructor
    function this = R2toRfunction(fun,var1,var2)
      this.fun = fun;
      this.funMatlab = matlabFunction(fun);
      this.grad = [diff(fun,var1); diff(fun,var2)];
      this.gradMatlab = matlabFunction(this.grad); 
    end
    % evaluation
    function v = evaluate(this,x,y)            
      v = this.funMatlab(x,y);
    end
    function v = evaluateGrad(this,x,y)            
      v = this.gradMatlab(x,y);
    end
    % plotter
    function plotContour(this,x,y,varargin)      
      [X Y] = meshgrid(x,y);
      figure(1);
      contour(X,Y,this.evaluate(X,Y),varargin{:});      
    end   
    plotGrad(this,x,y,varargin) % note here only method introduction
  end
end