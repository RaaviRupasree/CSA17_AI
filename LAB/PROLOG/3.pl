male(john).
male(peter).
male(david).
male(robert).

female(mary).
female(susan).
female(lisa).
female(emma).

parent(john, peter).
parent(mary, peter).

parent(john, lisa).
parent(mary, lisa).

parent(peter, david).
parent(susan, david).

parent(peter, emma).
parent(susan, emma).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, P),
    parent(P, Y).
