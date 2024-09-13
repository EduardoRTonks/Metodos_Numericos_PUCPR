%Método de Newton com function
% Antes de executar a function digite x = sym('x'); 
% Define x como variável simbólica
% Para executar deve-se digitar o nome da function na command window
% digita-se raiz_newton(a,b,cp)

function raiz_newton(f,a,b,x0,cp)
clc
disp('MÉTODO DE NEWTON'); % Imprime título
%%%%% TESTA O INTERVALO %%%%%
if (subs(f,a)*subs(f,b)) > 0
    disp('Este intervalo não possui raízes!')
    return % sai do programa
end
%%%%% TESTA O INTERVALO %%%%%
k = 0;
fd = diff(f); %cálculo da derivada de f (df/dx)
fprintf('x(0) = %.20f \n',x0);
while k<= 1000
    k = k+1;
    if subs(fd,x0) == 0
        disp('Derivada igual a zero, escolha outro ponto inicial')
        return
    end
    xk = eval(x0 - subs(f,x0)/subs(fd,x0));  % Método o Newton
    erro = abs(xk-x0)/max(abs(xk));
    fprintf('x(%d) = %.20f ; erro = %.20f \n',k,xk,erro);
    if erro < cp
        fprintf('A raiz é: \nx(%d) = %.20f ; erro = %.20f \n',k,xk,erro);
        return
    end
    x0 = xk;
end

