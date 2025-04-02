% No need to change
% plot flux magnitude along center
Xgq = linspace(0,0.8,200);
Ygq = linspace(0,0.8,200);
[Xgq, Ygq] = meshgrid(Xgq, Ygq);
qqMag = sqrt(qq(:,1).^2 + qq(:,2).^2);
qg = griddata(xq,yq,qqMag, Xgq, Ygq, 'nearest');

xclq = linspace(0,0.8,200);
yclq = 0.4;
qclq = interp2(Xgq,Ygq,qg,xclq,yclq, 'nearest');
figure(4)
scatter(xclq, qclq,'.');

% Note: please save xclq, Tclq data for plotting together with abaqus data