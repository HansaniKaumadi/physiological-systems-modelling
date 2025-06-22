% Hypothyroidism due to autoimmune disease
function dy_dt = iodine_hypo_autoimmune(time, state)
    A_matrix = [-2.52 0 0.08; 0.84 -0.005 0; 0 0.005 -0.1];
    input_vector = [150; 0; 0];
    dy_dt = A_matrix * state + input_vector;
end