function geragraf2f(x1,xn,p,f1,f2,y1,yn)
    % Gera uma sequência de valores para x
    x = linspace(x1, xn, p);
    
    % Avalia as funções simbólicas nos pontos x
    y = double(subs(f1, x));
    z = double(subs(f2, x));
    
    % Plota as funções
    plot(x, y, 'b-', x, z, 'r-',LineWidth=2) 
    axis([x1, xn, y1, yn]) % Especifica os limites dos eixos
    grid on
    
    % Destacar os eixos x e y
    hold on
    line([x1 xn], [0 0], 'Color', 'k', 'LineWidth', 0.5); % Eixo x
    line([0 0], [y1 yn], 'Color', 'k', 'LineWidth', 0.5); % Eixo y
    hold off
    
    xlabel('x')
    ylabel('f(x)')
    title('Gráfico de f(x) e g(x)')
end
