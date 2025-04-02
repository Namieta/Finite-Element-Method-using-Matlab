% File to define problem with fine mesh
%%%%%%%% Your input %%%%%%%%
% hint: mimic data_coarse.m

% File to define problem with fine mesh
node = importdata("FineMesh.csv");
elem = importdata("FineElement.csv");
x = node(:,2);  % x coord
y = node(:,3);  % y coord
IEN = elem(:, 2:4); % element connect
nnp = size(node,1); % no. of nodes
nel = size(IEN,1);  % no. of elements
plotmesh;  % only need to run once
% material
k1 = 5;   % conductance of material 1
k2 = 5.5;  % conductance of material 2
matflag = ones(nel,1);
matflag(1:128) = 2;
% flux boundaries
fbc1 = [5, 42;
 42, 41;
  41, 40;
  40, 39;
  39, 38;
  38, 37;
  37, 36;
  36, 6];  
fbc_val1 = -200;
fbc2 =  [7, 57;
 57, 58;
  58, 59;
  59, 60;
  60, 61;
  61, 62;
  62, 8];
fbc_val2 = -140;
fbc3 = [12, 94;
    94, 93;
    93, 92;
    92, 91;
    91, 90;
    90, 89;
    89, 88;
    88, 11];
fbc_val3 = 150;
fbc4 = [10, 78;
    78, 77;
    77, 76;
    76, 75;
    75, 74;
    74, 73;
    73, 72;
 72, 9];
fbc_val4 = 350;
% essential BC
%example ebc = [11, 50, 49, 48, 47, 46, 10];
ebc = [11, 87, 86, 85, 84, 83, 82, 81, 80, 79, 10];
Te = 6 - 10*x(ebc);
% source
s = 145; % source value
