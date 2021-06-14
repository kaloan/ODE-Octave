%[t,x]=ode45(@f3D,[0,5],[8,7,-12]);
%plot3(x(:,1),x(:,2),x(:,3),'b')
a=[3,5,7,12,-15,-72,8,-8,8,-8];
b=[0,1,-4,-1,6,4,7,-7,-7,7];
c=[25,-47,34,9,16,-9,-5,5,5,-5];
axis([-100,100,-100,100,-100,100])
hold on
for k=1:length(a)
[t,x]=ode45(@f3D,[0,6],[a(k),b(k),c(k)]);
plot3(x(:,1),x(:,2),x(:,3),'r')
[t,x]=ode45(@f3D,[0,-5],[a(k),b(k),c(k)]);
plot3(x(:,1),x(:,2),x(:,3),'b')
end
%function res=func3D(t,x)
% res=[-x(1)+4*x(2);x(1)+3*x(2)-5*x(3);-6*x(1)-2*x(2)];
%end
