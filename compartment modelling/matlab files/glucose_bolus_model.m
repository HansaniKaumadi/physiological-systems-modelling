% Glucose-insulin model with bolus input
function dy_dt = glucose_bolus_model(time, state)
    % System matrix and bolus input
    A_matrix = [-0.8 0.2; -5 -2];
    input_vector = [0; 1 - heaviside(time)];
    dy_dt = A_matrix * state + input_vector;
end