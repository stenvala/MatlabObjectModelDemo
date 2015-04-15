%% this is example of object oriented programming

function objectExampleTwoFunctions

  p = polynomialR2R([-2 1 3 -4 2 1]);
  realRoots = p.getRealRoots();
  
  % pick another function, now any R->R function
  syms('x','real');
  s = R2Rfunction(50*sin(x));
  
  % display polynomial and its real roots
  x = linspace(min(realRoots)-1,max(realRoots)+1); 
  figure(1);      
  plot(x,p.evaluate(x),'-b',realRoots,p.evaluate(realRoots),'*b')  
  hold on  
  plot(x,s.evaluate(x),'-k');
  r = s.getRoot(0.2); % find zero close to some point
  plot(r,s.evaluate(r),'*k');
  % plot also derivative
  plot(x,s.evaluate(x,1),'-r');  
  hold off
  
  
end