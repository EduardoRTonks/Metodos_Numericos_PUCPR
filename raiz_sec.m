function raiz_sec(f, x0, x1, cp)
    syms x;
    disp('Método das secantes!');
    k = 1;
    fprintf('x0 = %.20f\n', x0)
    while (k <= 100)
        k = k + 1;
        % Calcular xk pelo método das secantes
        fx0 = double(subs(f, x, x0));
        fx1 = double(subs(f, x, x1));
        xk = x1 - fx1 * (x1 - x0) / (fx1 - fx0);

        % Calcular erro relativo
        error = abs(xk - x1) / abs(xk);

        fprintf('x(%d) = %.20f ; erro = %.20f\n', k, xk, error);

        if (error < cp)
            fprintf('A raiz é: x(%d) = %.20f ; erro = %.20f\n', k, xk, error);
            return
        end

        % Atualizar x0 e x1 para a próxima iteração
        x0 = x1;
        x1 = xk;
    end
end