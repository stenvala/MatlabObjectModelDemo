%% this is example of object oriented programming

function objectExample

  p = polynomial([-2 1 3 -4 2 1]);
  realRoots = p.getRealRoots();
  
  % display polynomial and its real roots
  x = linspace(min(realRoots)-1,max(realRoots)+1); 
  figure(1);      
  plot(x,p.evaluate(x),'-b',realRoots,p.evaluate(realRoots),'*r')  
end