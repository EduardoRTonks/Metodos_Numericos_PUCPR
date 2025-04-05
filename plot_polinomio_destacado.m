% Definir a função polinomial
f = @(x) -2.1367e-5 * x.^3 + 7.7216e-3 * x.^2 + 3.3118 * x;

% Gerar o intervalo de x para o gráfico
x_values = linspace(-100, 614, 500);

% Calcular os valores da função para o intervalo
y_values = f(x_values);

% Pontos de destaque
x_highlight = [0, 200, 380, 550, 614];
y_highlight = f(x_highlight);

% Plotar a função
figure;
plot(x_values, y_values, 'b', 'LineWidth', 2); 
hold on;

% Destacar os pontos específicos
plot(x_highlight, y_highlight, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

% Adicionar rótulos e título
title('Gráfico da Função Polinomial com Pontos Destacados');
xlabel('x');
ylabel('f(x)');

% Adicionar grade
grid on;

% Mostrar a legenda
legend('Função', 'Pontos Destacados', 'Location', 'best');

% Definir limites do gráfico
xlim([-100 614]);
ylim([min(y_values)-10, max(y_values)+10]);

% Destacar os eixos x e y
line(xlim, [0 0], 'Color', 'k', 'LineWidth', 1); % Eixo x
line([0 0], ylim, 'Color', 'k', 'LineWidth', 1); % Eixo y

hold off;
