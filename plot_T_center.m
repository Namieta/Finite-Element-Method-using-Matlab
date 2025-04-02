% No need to change
% plot temperature along center line
Xg = linspace(0,0.8,20);
Yg = linspace(0,0.8,20);
[Xg, Yg] = meshgrid(Xg, Yg);

Tg = griddata(x,y,T, Xg, Yg);
xcl = linspace(0,0.8,20);
ycl = 0.4;

Tcl = interp2(Xg,Yg,Tg,xcl,ycl);
figure(3)
plot(xcl, Tcl);

% Note: please save xcl, Tcl data for plotting together with abaqus data