% Assuming you have flux values qx and qy, and mesh data

% Calculate flux magnitude
flux=importdata("Question3Data.csv");
flux_mag = sqrt(x.^2 + y.^2);

x = node(:,1);  % x coord
y = node(:,2);  % y coord

% Patch Plot for Flux Magnitude
figure;
patch('Vertices', [x, y], 'FaceVertexCData', flux_mag, 'FaceColor', 'flat');
colorbar;
title('Flux Magnitude |q|(x, y)');
xlabel('X Coordinate');
ylabel('Y Coordinate');

% Arrow Plot for Flux Direction
figure;
quiver(x_centers, y_centers);  % x_centers and y_centers are the coordinates of element centers
title('Flux Direction at Element Centers');
xlabel('X Coordinate');
ylabel('Y Coordinate');
