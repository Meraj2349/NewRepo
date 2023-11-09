function Bisection = Task_102 ()

function y = f(x)
    y =  x.^2-2
end

a = 1
b = 2
e = 1e-3;

roots = [];
i = 0;

while (b - a) / 2 > e
    c = (a + b) / 2;
    roots = [roots; c];

    if f(c) == 0
        break;
    elseif f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end

    i = i + 1;
end

fprintf('Number of iterations need is: %d\n', i);
fprintf("The root is: ");
disp(roots(end));

 x = linspace(-6, 6, 100);
 y = f(x);

 figure;
 plot(x, y);
hold on;
plot(roots, f(roots),'ro');
hold off;
xlabel('Values of x');
ylabel('Values of f(x)');
title('Bisection Method');
legend('f(x)=x^2-2','Roots');
grid on;
endfunction