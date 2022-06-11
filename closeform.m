clear all

syms x t1 t2 d1 d2 y kn1 kn2 kf1 kf2 x0 t10 t20

eq1 = -kn1*t1*x  -kn2*t2*x +kf1*d1 +kf2*d2  == 0; % x
eq2 = -kn1*t1*x  +kf1*d1 -kn1*t1*d2 +kf1*y  == 0; % t1
eq3 = -kn2*t2*x  +kf2*d2 -kn2*t2*d1 +kf2*y  == 0; % t2
eq4 = +kn1*t1*x  -kf1*d1 -kn2*t2*d1 +kf2*y  == 0; % d1
eq5 = +kn2*t2*x  -kf2*d2 -kn1*t1*d2 +kf1*y  == 0; % d2
eq6 = +kn1*t1*d2 +kn2*t2*d1 -(kf1+kf2)*y    == 0; % y


cn1 = x+d1+d2+y  ==  x0;
cn2 = t1+d1+y    == t10;
cn3 = t2+d2+y    == t20;


s1 = solve([eq1,eq2,eq3, eq4, eq5, eq6], [x, t1, t2, d1, d2, y]);
s2 = solve([eq1,eq2,eq3, eq4, eq5, eq6, cn1, cn2, cn3], [x, t1, t2, d1, d2, y]);