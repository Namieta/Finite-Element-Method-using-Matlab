function Fs = sourceVector
% source vector
global nnp nel x y IEN    % mesh
global k1 k2 matflag  % conductance
global fbc1 fbc_val1 fbc2 fbc_val2 fbc3 fbc_val3 fbc4 fbc_val4 % flux BC
global ebc Te % essential conditions
global s   % source
global KG FG T Tf % solve
Fs = zeros(nnp,1);
for e = 1:nel
   mat = matflag(e);
   if mat == 2
       IENe = IEN(e,:);
       xe = x(IENe); ye = y(IENe);
       area = 0.5*((xe(2)*ye(3) - xe(3)*ye(2)) - (xe(1)*ye(3) - xe(3)*ye(1)) + (xe(1)*ye(2) - xe(2)*ye(1)));
       for i = 1:3
           Fs(IENe(i)) = Fs(IENe(i)) + ((s*area)/3);  % Element source 
       end
   end
end
end