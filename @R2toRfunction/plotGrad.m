function plotGrad(this,x,y,varargin)      
  [X Y] = meshgrid(x,y);  
  G = this.evaluateGrad(X(:)',Y(:)');  
  quiver(X(:),Y(:),G(1,:)',G(2,:)',varargin{:});  
end
