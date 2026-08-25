bird(sparrow).
bird(eagle).
bird(pigeon).
bird(ostrich).
bird(penguin).

can_fly(sparrow).
can_fly(eagle).
can_fly(pigeon).

cannot_fly(X) :-
    bird(X),
    \+ can_fly(X).
