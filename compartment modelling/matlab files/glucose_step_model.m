% Glucose-insulin model with step input
function dy_dt = glucose_step_model(time, state)
    % Define coefficients for the system
    A_matrix = [-0.8 0.2; -5 -2];
    input_vector = [0; 1]; % Step input A(t) = 1
    dy_dt = A_matrix * state + input_vector;
end