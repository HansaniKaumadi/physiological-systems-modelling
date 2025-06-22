% low Iodine intake
function dy_dt = iodine_low_intake(time, state)
    A_matrix = [-2.52 0 0.08; 0.84 -0.01 0; 0 0.01 -0.1];
    input_vector = [15; 0; 0];
    dy_dt = A_matrix * state + input_vector;
end
