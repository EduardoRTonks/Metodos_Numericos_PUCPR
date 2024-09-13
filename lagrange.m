function lagrange(x,y)
clc
t = sym('t');
nx = length(x);
ny = length(y);
n=nx;
if(nx~=ny)
    disp('Numero de elementos incompativel')
    return
end
Pn=0;
disp('Polinomios Lk(t)')
for k = 1:nx
    Lk=1;
    for i = 1:nx
        if k ~= i
            Lk = Lk*(t-x(i))/(x(k)-x(i));
        end
    end
    fprintf('\nL_%d = %s/n',k-1,Lk)
    Pn=Pn+y(k)*Lk;
end
Pn = simplify(Pn);
fprintf('\nP_%d = %s/n',nx-1,Pn)
 
op = input('\nDeseja interpolar algo?Digite o valor caso contrario digite enter para sair');

 if isempty(op) == true
     eixox = linspace(x(1)-1,x(nx)+1);
     eixoy = subs(Pn,eixox);
     plot(eixox,eixoy,'b-',x,y,'k*')
     grid off
     title('Pn(x)')
     xlabel('x')
     ylabel('Pn')
     return
 else 
     yi = subs(Pn,op);
     fprintf('O valor da imagem de xi é: %d/n',yi)
     eixox = linspace(x(1)-1,x(nx)+1);
     eixoy = subs(Pn,eixox);
     plot(eixox,eixoy,'b-',x,y,'k*')
     grid off
     title('Pn(x)')
     xlabel('x')
     ylabel('Pn')
     yi = subs(Pn,op);
     fprintf('O valor da imagem de xi é: %d/n',yi)
     eixox = linspace(x(1)-1,x(nx)+1);
     eixoy = subs(Pn,eixox);
     plot(eixox,eixoy,'b-',x,y,'k*')
     grid on
     title('Pn(x)')
     xlabel('x')
     ylabel('Pn')
 end
