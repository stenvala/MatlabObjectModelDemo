function plotContour(this,x,y,varargin)
  [X Y] = meshgrid(x,y);
  figure(1);
  contour(X,Y,this.evaluate(X,Y),varargin{:});
end