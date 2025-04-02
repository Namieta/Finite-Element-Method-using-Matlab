function B = Bmatrix(xe, ye)
% B matrix
area2 = ((xe(2)*ye(3) - xe(3)*ye(2)) - (xe(1)*ye(3) - xe(3)*ye(1)) + (xe(1)*ye(2) - xe(2)*ye(1))); % Double area 

% B is 2x3 matrix
B = [(ye(2)-ye(3)) (ye(3)-ye(1)) (ye(1)-ye(2)); (xe(3)-xe(2)) (xe(1)-xe(3)) (xe(2)-xe(1))]/area2; % B matrix
end