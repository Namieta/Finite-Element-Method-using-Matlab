% FE code for heat flow problem
clear all; clf; hold on;
clc;
global nnp nel x y IEN    % mesh
global k1 k2 matflag  % conductance
global fbc1 fbc_val1 fbc2 fbc_val2 fbc3 fbc_val3 fbc4 fbc_val4 % flux BC
global ebc Te % essential condition
global s   % source
global KG FG T Tf % solve
% read problem
data_coarse; % coarse mesh
% data_fine;   % fine mesh
% construct global K, F
KG = zeros(nnp);
for e = 1:nel
   Ke = kelem(e);
   KG(IEN(e, :), IEN(e, :)) = KG(IEN(e, :), IEN(e, :)) + Ke;
end
F1 = fluxVector(fbc1, fbc_val1);
F2 = fluxVector(fbc2, fbc_val2);
F3 = fluxVector(fbc3, fbc_val3);
F4 = fluxVector(fbc4, fbc_val4);
% Flux values F1, F2, F3, F4
F5 = sourceVector;  % source matrix
FG = F1 + F2 + F3 + F4 + F5;  % summation
% solve for unknowns
fbc = setdiff(1:1:nnp,ebc);
KGff = KG(fbc, fbc);
KGfe = KG(fbc, ebc);
FG(fbc) = FG(fbc) - KGfe*Te; %FGfree = FGfree - KGfe*Te;
Tf = KGff\FG(fbc);
T = zeros(nnp,1);
T(ebc) = Te;
T(fbc) = Tf;
% plot results
plot_temperature;
plot_flux;
plot_T_center; % You need to save output data
plot_q_center; % You need to save output data
