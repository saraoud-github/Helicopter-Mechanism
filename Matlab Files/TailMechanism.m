clear all;
clc;

a = 4;
b = 9.85;
c = 2;
theta2M=0:0.5:60;

XA=[];
YA=[];
XB=[];
YB=[];
XC=[];
YC=[];

for i=1:length(theta2M)
    theta2=theta2M(i);
    
    theta3 = theta2;
    
    X= [0 a*cosd(theta2) a*cosd(theta2) a*cosd(theta2)-c/2 a*cosd(theta2)-c/2 a*cosd(theta2)+c/2 a*cosd(theta2)+c/2 a*cosd(theta2) a*cosd(theta2)+c/2 a*cosd(theta2)+c/2+a*cosd(theta3) a*cosd(theta2)+c/2+a*cosd(theta3)+cosd(theta3)];
    Y = [0 a*sind(theta2)  -b -b -b-c -b-c -b -b -b -b+a*sind(theta3) -b+sind(theta3)];
    
    Z = [a*cosd(theta2)+c/2 a*cosd(theta2)+c/2+a*cosd(theta3) a*cosd(theta2)+c/2+a*cosd(theta3)+cosd(theta3)];
    W = [-b-c -b-c-a*sind(theta2) -b-c-sind(theta3)];
    
    XA=[XA a*cosd(theta2)+c/2];
    YA=[YA -b-c];

    XB=[XB a*cosd(theta2)+c/2];
    YB=[YB -b];
    
    XC=[XC a*cosd(theta2)];
    YC=[YC a*sind(theta2)];

    figure(1)
    plot(X,Y,'o-',Z,W,'o-')
    axis('square')
    
    hold on;
    plot(XA,YA,'ro--')
    hold on;
    plot(XB,YB,'bo--')
    hold on;
    plot(XC,YC,'go--')
    hold off;
    
    axis([-5 10 -20 10])
    pause(0.01)
end
