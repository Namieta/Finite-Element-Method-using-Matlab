% No need to change

% plot node
figure(1)
for i = 1:nel
    XX = [x(IEN(i,1)) x(IEN(i,2)) x(IEN(i,3)) x(IEN(i,1))];
    YY = [y(IEN(i,1)) y(IEN(i,2)) y(IEN(i,3)) y(IEN(i,1))];
    plot(XX,YY);hold on;
    
    text(XX(1),YY(1),sprintf('%0.5g',IEN(i,1)));
    text(XX(2),YY(2),sprintf('%0.5g',IEN(i,2)));
    text(XX(3),YY(3),sprintf('%0.5g',IEN(i,3)));
end

% plot element
for i = 1:nel
    XX = [x(IEN(i,1)) x(IEN(i,2)) x(IEN(i,3)) x(IEN(i,1))];
    YY = [y(IEN(i,1)) y(IEN(i,2)) y(IEN(i,3)) y(IEN(i,1))];
    plot(XX,YY);hold on;
    xe = sum(x(IEN(i,:)))/3;
    ye = sum(y(IEN(i,:)))/3;
    
    text(xe,ye,sprintf('%0.5g',i));
end
