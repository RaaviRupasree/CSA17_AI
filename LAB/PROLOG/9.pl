fact(sunny).
fact(warm).

rule(sunny, happy).
rule(warm, active).
rule(happy, smiling).
rule(active, healthy).

forward :-
    fact(X),
    rule(X, Y),
    \+ fact(Y),
    assertz(fact(Y)),
    write('New fact: '),
    write(Y),
    nl,
    forward.

forward.
