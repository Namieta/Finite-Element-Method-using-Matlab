function Fi = fluxVector(fbc, fbc_val)
% flux vector
global nnp nel x y IEN    % mesh
global k1 k2 matflag  % conductance
global fbc1 fbc_val1 fbc2 fbc_val2 fbc3 fbc_val3 fbc4 fbc_val4 % flux BC
global ebc Te % essential
global s   % source
global KG FG T Tf % solve

Fi = zeros(nnp,1);
ne1 = size(fbc,1);
for i = 1:ne1
   node1 = fbc(i, 1);
   node2 = fbc(i, 2);
   x1 = x(node1); y1 = y(node1);
   x2 = x(node2); y2 = y(node2);
   length = sqrt((x1-x2)^2)+((y1-y2)^2);
   Fi(node1) = Fi(node1) - 0.5*length*fbc_val;  %length X fluxvalue X 0.5
   Fi(node2) = Fi(node2) - 0.5*length*fbc_val;
end
end