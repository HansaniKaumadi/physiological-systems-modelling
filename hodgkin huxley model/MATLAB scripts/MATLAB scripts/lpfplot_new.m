% Plot Input and Output Voltage vs. Frequency for Sallen-Key LPF
% This script plots input and output voltages (mV) vs. frequency (Hz) on a linear scale
% with a smooth curve, ensuring negative second derivative in the roll-off region

% Measured data
frequencies = [10, 20, 50, 100, 150, 180, 200, 220, 250, 280, 300, 320, 350, 380, 400, 500, 1000]; % Hz
input_voltage = 200 * ones(size(frequencies)); % Constant input voltage (200 mV)
output_voltage = [208, 208, 208, 204, 176, 160, 156, 144, 132, 112, 106, 104, 96, 86, 82, 52, 27]; % Output voltages (mV)

% Create a table
data_table = table(frequencies', input_voltage', output_voltage', ...
    'VariableNames', {'Frequency_Hz', 'Input_Voltage_mV', 'Output_Voltage_mV'});

% Display the table
disp('LPF Frequency Response Data:');
disp(data_table);

% Interpolate data for a smooth curve
% Create a finer frequency grid for interpolation (linear spacing)
interp_frequencies = linspace(min(frequencies), max(frequencies), 100);
interp_output_voltage = interp1(frequencies, output_voltage, interp_frequencies, 'pchip'); % PCHIP interpolation for output voltage
interp_input_voltage = 200 * ones(size(interp_frequencies)); % Constant input voltage

% Verify second derivative of interpolated output voltage
% Compute numerical second derivative
h = interp_frequencies(2) - interp_frequencies(1); % Step size
first_deriv = diff(interp_output_voltage) / h; % First derivative
second_deriv = diff(first_deriv) / h; % Second derivative
% Check if second derivative is negative in roll-off region (>200 Hz)
rolloff_idx = find(interp_frequencies > 200, 1); % Index where frequency > 200 Hz
is_concave_down = all(second_deriv(rolloff_idx:end) <= 0);
if is_concave_down
    disp('Second derivative is negative or zero in roll-off region (>200 Hz).');
else
    disp('Warning: Second derivative is not consistently negative in roll-off region.');
end

% Plot the input and output voltages vs. frequency
figure;
plot(interp_frequencies, interp_input_voltage, 'r--', 'LineWidth', 2, 'DisplayName', 'Input Voltage'); % Smooth input voltage (dashed red)
hold on;
plot(interp_frequencies, interp_output_voltage, 'b-', 'LineWidth', 2, 'DisplayName', 'Output Voltage'); % Smooth output voltage (solid blue)
plot(frequencies, input_voltage, 'ro', 'MarkerSize', 5, 'LineStyle', 'none', 'DisplayName', 'Input Data Points'); % Input data points
plot(frequencies, output_voltage, 'bo', 'MarkerSize', 5, 'LineStyle', 'none', 'DisplayName', 'Output Data Points'); % Output data points
grid on;
title('Input and Output Voltage of Sallen-Key LPF vs. Frequency');
xlabel('Frequency (Hz)');
ylabel('Voltage (mV)');
xlim([min(frequencies) max(frequencies)]);
ylim([0 max(output_voltage)+50]); % Adjust y-axis to include 0 and max output
set(gca, 'XTick', [0 200 400 600 800 1000]); % Custom x-axis ticks
legend('show'); % Display legend
hold off;