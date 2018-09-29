function [wwn,wwn1]=newt(fu,w1)
syms x
w=w1;
fprima=diff(fu,x);
control=true;
while (control)
for i=1:50
    w(i+1)=w(i)-(subs(fu,w(i))/subs(fprima,w(i)));
    wwn1(i)=double(w(i));
    disp(w(i))
    wwn(i)=double(w(i));
   if abs(w(i+1)-w(i))<=10e-5
        control=false;
        break
   elseif i==50
       control=false;
       break
    end
end
end
end
