function plotContour(this,x,y,varargin)
  [X Y] = meshgrid(x,y);  
  contour(X,Y,this.evaluate(X,Y),varargin{:});
end