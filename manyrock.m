function Maxflot = manyrock(n)
t = 0;
syms x;
expr = log(x^exp(1)*x);
F = int(expr,[0,1]);

f = double(F);

while t < n
    t = t+1;
    G = rock(t);
    Ocha2 = ((f - G)/f)*100;
    
    Maxflot(t) = Ocha2;
end
plot(Maxflot);
end