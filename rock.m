function Ocha = rock(n)

t = 0;
sumintral = 0;
intergralnew = 0;
syms x;
expr = log(x^exp(1)*x);
F = int(expr,[0,1]);

f = double(F);

while t<n
     sumintral = intergralnew + sumintral;
     t  = t + 1;
     k = 1/n;
     h = t/n;
     S = subs(expr,h);
     s = double (S);
     s = abs(s);
     A = s*k;
     intergralnew = A;
end
if t == n
    
    k = 1/n;
    S = subs(expr,1);
    s = double (S);
    s = abs(s);
    A = s * k;
    
    intergral2 = sumintral + A;
end
Ocha = intergral2 - f;
end
