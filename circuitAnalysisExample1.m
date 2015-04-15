function circuitAnalysisExample1
  % component values
  E = 5;
  R1 = 1;
  R2 = 1;
  L = 1;
  % di/dt is this function 
  f = @(t,x) E/L-R1/L*x;
  x0 = E/(R1+R2); % initial value  
  tspan = linspace(0,6); % solution time span 
  [t x] = ode45(f,tspan,x0); % ode45 solver  
  figure(1);
  plot(t,x);     
end
