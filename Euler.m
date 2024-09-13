function Euler(f,x0,y0,xN,N)
h = (xN-x0)/N;
x(1)=x0;
y(1)=y0;
eixox=x;
eixoy=y;
fprintf('Solução de Euler\n')
fprintf('h = %f\n',h)
fprintf('xn \t\t\t yn\n')
fprintf('%f \t %.10f\n', x0,y0)

for i = 1:N
    y0 = y0 + h*eval(subs(f,{'x','y'},{x0,y0}));
    x0 = x0 + h;
    fprintf('%f \t %.10f \n',x0,y0)
    eixox = [eixox x0];
    eixoy = [eixoy y0];
end

