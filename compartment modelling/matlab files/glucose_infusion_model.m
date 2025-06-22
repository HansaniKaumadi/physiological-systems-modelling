% Glucose-insulin model with insulin infusion
function dy_dt = glucose_infusion_model(time, state)
    % System matrix with insulin infusion
    A_matrix = [-0.8 0.01; -5 -2];
    input_vector = [0.1; 1]; % Insulin infusion + step input
    dy_dt = A_matrix * state + input_vector;
end