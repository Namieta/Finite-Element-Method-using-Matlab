% Plot 2D arrow of flux
xq = zeros(nel,1);
yq = zeros(nel,1);
qq = zeros(nel,2);
for e = 1:nel
   mat = matflag(e);
   if mat == 2
       kc = k2;
   else
      kc = k1;
   end
   IENe = IEN(e,:);
   xe = x(IENe);
   ye = y(IENe);
   xq(e) = mean(xe);
   yq(e) = mean(ye);
   Tq = T(IENe);
   B = Bmatrix(xe, ye);
   qe = -kc*B*Tq;  % Flux 
   qq(e,:) = qe';
end
figure(2)
patch(xp,xp,'white')
hold on
quiver(xq,yq,qq(:,1), qq(:,2),2, 'r')