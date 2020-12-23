function Maxflot = manyrock(n)
t = 0;
syms x;

expr = log(3*x + 2);  %이곳에 원하는 수식 삽입
F = int(expr,[0,1]);

f = double(F);

while t < n
    t = t+1;
    G = rock(t);
    Ocha2 = ((f - G)/f)*100;   
    
    Maxflot(t) = Ocha2; %ignore error
end
plot(Maxflot);
end