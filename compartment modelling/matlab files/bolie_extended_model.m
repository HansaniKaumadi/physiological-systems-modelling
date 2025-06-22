function dydt = bolie_extended_model(t, y)
    % Define parameters for the extended Bolie’s model
    k1 = 0.8;  % Insulin decay rate
    k3 = 0.2;  % Glucose to insulin production rate
    k4 = 2;    % Glucose utilization rate
    k6 = 5;    % Insulin-dependent glucose uptake
    a = 1;     % Step input amplitude
    k7 = 0.5;  % Glucagon decay rate
    k9 = 0.06; % Glucose to glucagon production rate
    k10 = 1;   % Glucagon effect on glucose

    % System matrix based on derived equations
    A = [-k4 -k6 k10; k3 -k1 0; k9 0 -k7];
    input = [a 0 0]'; % Step input u(t) = 1 for t > 0

    % Differential equations
    dydt = A * y + input;
end