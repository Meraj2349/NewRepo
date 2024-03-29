
n =3;
A = [25,5,1;64,8,1; 144,12,1];

B = [106.8;177.2;279.2];

dett = det(A);
if dett == 0
    disp('no ans ');
else
    a=[A B];
    disp('Matrix is:');
    disp(a);
    for i = 0:n-2
        for j = 0:n-2-i
            a(i+j+2:i+j+2,i+1:n+1)=(a(i+j+2:i+j+2,i+1:n+1).*(a(i+1,i+1)/a(i+j+2,i+1)))-a(i+1:i+1,i+1:n+1);
        end
    end
     disp('Matrix After Gaussian Ellimination is: ')
    disp(a);
    X=B';
    for i = 0:n-1
        X(n-i)=(a(n-i,n+1)-sum(a(n-i:n-i,1:n).*X)+a(n-i,n-i)*X(n-i))/a(n-i,n-i);
    end
    X=X';
  disp('ans are:');
    a1= X(1,1);
    fprintf("a1=%d\n",a1);

    a2= X(2,1);
   fprintf("a2=%d\n",a2);
    a3= X(3,1);
   fprintf("a3=%d\n\n",a3);
   fprintf("Hence, v(t)m/s= %dt^2+ %dt+%d\n",a1,a2,a3);
   t=6;
   v= a1*t*t+a2*t+a3;
   fprintf("velocity t=6s is: v(6)= %d m/s\n",v);
end
