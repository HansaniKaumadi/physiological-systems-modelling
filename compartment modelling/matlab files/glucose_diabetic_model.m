% Glucose-insulin model for diabetic condition
function dy_dt = glucose_diabetic_model(time, state)
    % System matrix with reduced insulin sensitivity
    A_matrix = [-0.8 0.01; -5 -2];
    input_vector = [0; 1]; % Step input
    dy_dt = A_matrix * state + input_vector;
end