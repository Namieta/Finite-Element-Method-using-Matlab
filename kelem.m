function Ke = kelem(e)
global nnp nel x y IEN    % mesh
global k1 k2 matflag  % conductance
global fbc1 fbc_val1 fbc2 fbc_val2 fbc3 fbc_val3 fbc4 fbc_val4 % flux BC
global ebc Te % essential
global s   % source
global KG FG T Tf % solve

Ke = zeros(3);
IENe = IEN(e,:);
xe = x(IENe); ye = y(IENe);
mat = matflag(e);
if mat == 2
   kc = k2;
else
   kc = k1;
end
area = 0.5*((xe(2)*ye(3) - xe(3)*ye(2)) - (xe(1)*ye(3) - xe(3)*ye(1)) + (xe(1)*ye(2) - xe(2)*ye(1))); 
B = Bmatrix(xe, ye); %(call B matrix)
Ke = Ke + kc*area*(B.')*B; %Ke matrix
end
