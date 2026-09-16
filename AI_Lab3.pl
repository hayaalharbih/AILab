male(hussain).
male(hulayel).
male(mohammed).
male(khaled).
male(muteb).

female(ghalyah).
female(fahdah).
female(haya).
female(sarah).
female(lina).

parent(ghalyah, fahdah).
parent(hussain, fahdah).

parent(ghalyah, mohammed).
parent(hussain, mohammed).

parent(hulayel, haya).
parent(fahdah, haya).

parent(hulayel, sarah).
parent(fahdah, sarah).

parent(hulayel, khaled).
parent(fahdah, khaled).

parent(hulayel, lina).
parent(fahdah, lina).

parent(mohammed, muteb).

father(X, Y) :- male(X), parent(X,Y).
mother(X, Y) :- female(X), parent(X,Y).
brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.





