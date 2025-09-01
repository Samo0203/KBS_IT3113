parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
sister(Y,Z):- parent(X,Y),parent(X,Z),female(Y),Y\==Z.
brother(Y,Z):- parent(X,Y),parent(X,Z),male(Y),Y\==Z.
grandparent(X,Z):- parent(X,Y),parent(Y,Z).
grandfather(X,Z):- parent(X,Y),parent(Y,Z),male(X).
grandmother(X,Z):- parent(X,Y),parent(Y,Z),female(X).
grandchild(X,Y) :- parent(Y,Z),parent(Z,X).
grandson(X,Y):- parent(Y,Z),parent(Z,X),male(Z).
granddaughter(X,Y):- parent(Y,Z),parent(Z,X),female(Z).
happy(X):- parent(X,_).
twochi(X):- parent(X,Y),parent(X,Z),sister(Y,Z).
aunt(X,Y):- parent(Z,Y),sister(X,Z).
aunt(X,Y):- parent(Z,Y),brother(X,Z).



