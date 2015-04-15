function circuitAnalysisExample2
  % component values
  U = @(t) 5*sin(2*pi*t);
  R = 1;
  L = 2;
  C = 1;
  % di/dt is this function 
  f = @(t,x) [1/L*(U(t)-R*x(1)-x(2));1/C*x(1)];
  x0 = [0;0];
  tspan = linspace(0,15,1e4); % solution time span 
  [t x] = ode15s(f,tspan,x0); % ode45 solver  
  figure(1);
  plot(t,x);     
  legend('Current','Capacitor voltage')
  legend boxoff
  
end
