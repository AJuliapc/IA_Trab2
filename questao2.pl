% P(Str)
0.7::str(dry);
0.2::str(wet); 
0.1::str(snow_covered).

% P(Flw)
0.1::flw(t); 
0.9::flw(f).

% P(B)
0.95::b(t); 
0.05::b(f).

% P(K)
0.9::k(t); 
0.1::k(f).

% P(R | Str, Flw)
0.8::r(t); 0.2::r(f) :- str(dry), flw(t).
0.3::r(t); 0.7::r(f) :- str(dry), flw(f).
0.9::r(t); 0.1::r(f) :- str(wet), flw(t).
0.6::r(t); 0.4::r(f) :- str(wet), flw(f).
0.99::r(t); 0.01::r(f) :- str(snow_covered), flw(t).
0.7::r(t); 0.3::r(f) :- str(snow_covered), flw(f).

% P(V | R)
0.95::v(t); 
0.05::v(f) :- r(t).
0.1::v(t); 
0.9::v(f) :- r(f).

% P(Li | V, B, K) — com base na tabela fornecida:

0.99::li(t); 0.01::li(f) :- v(t), b(t), k(t).
0.01::li(t); 0.99::li(f) :- v(t), b(t), k(f).
0.01::li(t); 0.99::li(f) :- v(t), b(f), k(t).
0.001::li(t); 0.999::li(f) :- v(t), b(f), k(f).
0.3::li(t); 0.7::li(f) :- v(f), b(t), k(t).
0.005::li(t); 0.995::li(f) :- v(f), b(t), k(f).
0.005::li(t); 0.995::li(f) :- v(f), b(f), k(t).
0.0::li(t); 1.0::li(f) :- v(f), b(f), k(f).

% Query: P(V = t | Str = snow_covered)
evidence(str(snow_covered)).
query(v(t)).