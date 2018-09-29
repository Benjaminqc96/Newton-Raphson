clear 
close all
clc
syms x
format long
fu=input('ingrese una funcion: ');
w=input('ingrese un punto inicial: ');
[pun,fur1]=newt(fu,w);
%[pun1,fur2]=newt(fu,5*pi);
%[pun2,fur3]=newt(fu,10*pi);
ezplot(fu)
grid on 
hold on
for i=1:length(pun)
    ypun(i)=double(subs(fu,pun(i)));
    plot(pun(i),ypun(i),'o','MarkerFaceColor','r')
end
%for j=1:length(pun1)
 %   ypun1(j)=double(subs(fu,pun1(j)));
%plot(pun1(j),ypun1(j),'*','MarkerFaceColor','b')
%end
%for k=1:length(pun2)
 %   ypun2(k)=double(subs(fu,pun2(k)));
  %plot(pun2(k),ypun2(k),'+','MarkerFaceColor','g')
%end
hold off