fact(sunny).
fact(warm).

rule(happy, sunny).
rule(active, warm).
rule(smiling, happy).
rule(healthy, active).

prove(X) :-
    fact(X).


prove(X) :-
    rule(X, Y),
    prove(Y).
