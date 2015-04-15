%% this is example in object oriented programming and adding two polynomials

function objectExampleMyPlus

  p1 = polynomialExt([-2 1 3 -4 2 1]);
  p2 = polynomialExt([-1 -3 4 2 -1]);
  p3 = p1+p2; % results in new polynomialExt
  realRoots = p3.getRealRoots();  
  
  % display polynomial and its real roots
  x = linspace(min(realRoots)-1,max(realRoots)+1); 
  figure(1);      
  plot(x,p3.evaluate(x),'-b',realRoots,p3.evaluate(realRoots),'*r')  
  
end