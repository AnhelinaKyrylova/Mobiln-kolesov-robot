%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Autor: Anhelina Kyrylova                              %%%%%%%%
%%%%%%%%%%%% Kód v Matlab pre hru,                                 %%%%%%%%
%%%%%%%%%%%% kde pomocou šípok alebo W,A,S,D budem ovládať robota  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pohyby = input('Zadajte sériu pohybov pre robota W/A/S/D: ', 's');
x = 0;
y = 0;
trasa_x = [];
trasa_y = [];
for i = 1:length(pohyby)
pohyb = upper(pohyby(i));
trasa_x = [trasa_x, x];
trasa_y = [trasa_y, y];
% W A S D
if pohyb == 'W' % Hore
y = y + 1;
elseif pohyb == 'A' % Vľavo
x = x - 1;
elseif pohyb == 'S' % Dolu
y = y - 1;
elseif pohyb == 'D' % Vpravo
x = x + 1;
else
fprintf('Neplatný pohyb: %c\n', pohyb);
end
end
fprintf('Výsledná poloha robota: x = %d, y = %d\n', x, y);
figure;
plot(trasa_x, trasa_y, 'b-', 'LineWidth', 2);
hold on;
plot(trasa_x(end), trasa_y(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
title('Trasa robota');
xlabel('X');
ylabel('Y');
grid on;
axis equal;
legend('Trasa robota', 'Aktuálna poloha');
