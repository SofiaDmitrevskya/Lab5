model lab5
parameter Real a = 0.71; // коэффициент естественной смертности хищников
parameter Real b = 0.072; // коэффициент естественного прироста жертв
parameter Real c = 0.73; // коэффициент увеличения числа хищников
parameter Real d = 0.074; // коэффициент смертности жертв 

parameter Real x0=8;
parameter Real y0=21;

Real x(start =x0);
Real y(start =y0);

equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;

end lab5;
