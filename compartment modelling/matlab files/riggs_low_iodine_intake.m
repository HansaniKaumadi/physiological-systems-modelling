% low iodine intake
function dy_dt = riggs_low_iodine_intake(time, state)
    A_matrix = [-2.52 0 0.08; 0.84 -0.01 0; 0 0.01 -0.1];
    input_vector = [50; 0; 0];
    dy_dt = A_matrix * state + input_vector;
end
