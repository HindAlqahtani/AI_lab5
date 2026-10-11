male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(mona, herb).
parent(abraham, homer).
parent(mona, homer).

parent(clancy, marge).
parent(jackie, marge).
parent(clancy, patty).
parent(jackie, patty).
parent(clancy, selma).
parent(jackie, selma).

parent(homer, bart).
parent(marge, bart).
parent(homer, lisa).
parent(marge, lisa).
parent(homer, maggie).
parent(marge, maggie).

parent(selma, ling).

father(Father, Child) :- male(Father), parent(Father, Child).

mother(Mother, Child) :- female(Mother), parent(Mother, Child).

son(Son, Parent) :- male(Son), parent(Parent, Son).

daughter(Daughter, Parent) :- female(Daughter), parent(Parent, Daughter).

sibling(Person1, Person2) :- parent(Parent, Person1), parent(Parent, Person2), Person1 \= Person2.

brother(Brother, Person) :- male(Brother), sibling(Brother, Person).

sister(Sister, Person) :- female(Sister), sibling(Sister, Person).

grandfather(Grandfather, Child) :- male(Grandfather), parent(Grandfather, Parent),parent(Parent, Child).

aunt(Aunt, Person) :- female(Aunt), parent(Parent, Person), sibling(Aunt, Parent).

uncle(Uncle, Person) :- male(Uncle), parent(Parent, Person), sibling(Uncle, Parent).

cousin(Person1, Person2) :- parent(Parent1, Person1), parent(Parent2, Person2), sibling(Parent1, Parent2), Person1 \= Person2.

ancestor(Ancestor, Person) :- parent(Ancestor, Person).

ancestor(Ancestor, Person) :- parent(Ancestor, Parent), ancestor(Parent, Person).
