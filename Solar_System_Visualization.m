% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: October 19, 2024

% Define the average distances of planets from the Sun in AU
planet_distances = [0.39, 0.72, 1, 1.52, 5.2, 9.58, 19.22, 30.07];
% Define the relative sizes of the planets (Earth = 1)
planet_sizes = [0.38, 0.95, 1, 0.53, 11.2, 9.4, 4, 3.9];
% Define planet names for labeling
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

% Create a figure
figure('Position', [100, 100, 800, 600]);

% Scatter plot of planet distances vs. planet sizes
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes * 100, 100, 'filled'); 
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (Earth = 1)');
grid on;

% Add labels for each planet
text(planet_distances, planet_sizes * 100, planet_names, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Bar chart of planet distances
subplot(2, 1, 2);
bar(planet_distances);
title('Planet Distances from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
set(gca, 'XTickLabel', planet_names); % Set x-tick labels
grid on;

% Save the figure as an image file
saveas(gcf, 'solar_system_visualization.png');

% Display a message to indicate that the figure was saved
disp('Figure saved as solar_system_visualization.png');
