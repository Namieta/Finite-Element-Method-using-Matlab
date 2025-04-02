% File to define problem with coarse mesh

% read the mesh
node = importdata("Coarse_mesh.csv"); %importdata(%%% your input %%%);
elem = importdata("Coarse_element.csv"); %importdata(%%% your input %%%);

x = node.data(:,1);  % x coord
y = node.data(:,2);  % y coord
IEN = elem.data(:,1:end); % element connect
nnp = size(node,1); % no. of nodes
nel = size(IEN,1);  % no. of elements

plotmesh;  % only need to run once

% material
k1 = 5; %%% your input %%%;   % conductance of material 1
k2 = 10.5;  %%% your input %%%;  % conductance of material 1
matflag = ones(nel,1);
matflag(1:32) = 2;

% flux boundaries
fbc1 = [5, 25;
 25, 26;
  26, 27;
  27, 28;
  28, 6];  % %%% change with your input %%%
fbc_val1 = -200;

fbc2 =  [7, 35;
 35, 36;
  36, 37;
  37, 8];
fbc_val2 = -140;

fbc3 = [12, 56;
    56, 57;
    57, 58;
    58, 59;
    59, 11];
fbc_val3 = 150;

fbc4 = [10, 46;
    46, 45;
    45, 44;
    44, 43;
    43, 9]; 
fbc_val4 = 350;

% essential BC
%example ebc = [11, 50, 49, 48, 47, 46, 10];
ebc = [11, 50, 49, 48, 47, 46, 10] %%% your input %%%
Te = 6 - 10*x(ebc);

% source 
s = 145 %%% your input %%%0; % source value
