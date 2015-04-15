%% this is example of object oriented programming

function objectSurfaceExample

  syms('x','real');
  syms('y','real');
  
  s = R2toRfunction(sin(x)*cos(y),x,y);
  figure(1);
  s.plotContour(linspace(-2,2),linspace(-2,2),20);
  hold on
  s.plotGrad(linspace(-2,2,10),linspace(-2,2,10));
  hold off
  
end