% Plot temperature field
xp = zeros(3, nel);
yp = zeros(3, nel);
Tp = zeros(3, nel);
for e = 1:nel
    IENe = IEN(e, :);
    xp(:,e) = x(IENe);
    yp(:,e) = y(IENe);
    Tp(:,e) = T(IENe);
end
figure(1)
fill(xp,yp,Tp)
colormap jet
colorbar