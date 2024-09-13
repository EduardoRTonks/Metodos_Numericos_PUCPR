function plot_function(f, x_range, plot_title, x_label, y_label)
    % plot_function Plota uma função f no intervalo especificado por x_range
    % Parâmetros:
    % f         - Função a ser plotada (por exemplo, @(x) x.^2)
    % x_range   - Vetor de dois elementos especificando o intervalo de x [x_min, x_max]
    % plot_title - Título do gráfico (opcional)
    % x_label   - Rótulo do eixo x (opcional)
    % y_label   - Rótulo do eixo y (opcional)
    
    % Cria o vetor de valores x com base no intervalo dado
    x = linspace(x_range(1), x_range(2), 400);
    
    % Calcula os valores de y aplicando a função f a cada valor de x
    y = f(x);
    
    % Gera o gráfico
    figure;
    plot(x, y, 'LineWidth', 2);
    
    % Adiciona título e rótulos, se fornecidos
    if nargin > 2 && ~isempty(plot_title)
        title(plot_title);
    end
    if nargin > 3 && ~isempty(x_label)
        xlabel(x_label);
    end
    if nargin > 4 && ~isempty(y_label)
        ylabel(y_label);
    end
    
    % Personalização do gráfico
    grid on;
end
