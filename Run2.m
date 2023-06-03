A = [-0.866552  -0.0121665  0.16822; 0.835223  0.00583645  0.913178; 0  0  -0.9609435];
lambda = -0.673044;

% Check stability
isStable = checkStability(A, lambda);

% Display the result
if isStable
    disp('The system is stable.');
else
    disp('The system is unstable.');
end

% Define the time range for plotting
t = linspace(0, 10, 100);  % Adjust the time range as needed

% Define the initial condition
x0 = [1; 1; 1];  % Adjust the initial condition as needed

% Solve the system equations numerically
[t, x] = ode45(@(t, x) (A - lambda*eye(size(A)))*x, t, x0);

% Plot the trajectories of the system variables
figure;
plot(t, x(:, 1), 'r', 'LineWidth', 2);  % First variable in red
hold on;
plot(t, x(:, 2), 'g', 'LineWidth', 2);  % Second variable in green
plot(t, x(:, 3), 'b', 'LineWidth', 2);  % Third variable in blue
xlabel('Time');
ylabel('Variable value');
legend('Variable 1', 'Variable 2', 'Variable 3');
if isStable
    title('Stable System Trajectories');
else
    title('Unstable System Trajectories');
end

