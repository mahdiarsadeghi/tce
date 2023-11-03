This is the three-body model as used for strauctural identifiability analysis (from the time course data) with the web-based [Structural Identifiability Analyzer](https://maple.cloud/app/6509768948056064)

```
diff(X(t), t) = - kn1 * T1(t) * X(t) - kn2 * T2(t) * X(t) + kf1 * D1(t) + kf2 * D2(t),
diff(T1(t), t) = -kn1 * T1(t) * X(t) + kf1 * D1(t) - kn1 * T1(t) * D2(t) + kf1 * Y(t),
diff(T2(t), t) = -kn2 * T2(t) * X(t) + kf2 * D2(t) - kn2 * T2(t) * D1(t) + kf2 * Y(t),
diff(D1(t), t) = kn1 * T1(t) * X(t) - kf1 * D1(t) - kn2 * T2(t) * D1(t) + kf2 * Y(t) ,
diff(D2(t), t) = kn2 * T2(t) * X(t) - kf2 * D2(t) - kn1 * T1(t) * D2(t) + kf1 * Y(t),
diff(Y(t), t) = kn1 * T1(t) * D2(t) + kn2 * T2(t) * D1(t) - (kf1 + kf2) * Y(t),
y1(t) = X(t),
y2(t) = T1(t),
y3(t) = T2(t)
```

The application establishes that all the parameters `kn1`, `kn2`, `kf1`, and `kf2` are globally identifiable.
