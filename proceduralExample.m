%% this is example of procedural programming

function proceduralExample

  p = [-2 1 3 -4 2 1]; % init polynomial
  r = roots(p); % find roots
  realRoots = r(r == real(r)); % consider only real roots
  
  % display polynomial and its real roots
  x = linspace(min(realRoots)-1,max(realRoots)+1); 
  figure(1);      
  plot(x,polyval(p,x),'-b',realRoots,polyval(p,realRoots),'*r')  
end