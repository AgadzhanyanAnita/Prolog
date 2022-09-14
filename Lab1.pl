% задание 1
woman(пери).
woman(алвард).
woman(анаит).
woman(алиса).
woman(анушик).
woman(анита).
woman(адель).
woman(паркуи).

man(вазген).
man(рубен).
man(рафик).
man(альберт).
man(маргар).
man(хорен).
man(макар).

women(X) :- woman(X), write(X), nl, fail.
men(X) :- man(X), write(X), nl, fail.

% задание 2
parent(вазген, алвард).
parent(вазген, анаит).
parent(вазген, алиса).
parent(вазген, рубен).
parent(вазген, рафик).
parent(пери, алвард).
parent(пери, анаит).
parent(пери, алиса).
parent(пери, рубен).
parent(пери, рафик).
parent(макар, альберт).
parent(паркуи, альберт).
parent(алвард, анита).
parent(алвард, анушик).
parent(алвард, маргар).
parent(альберт, анита).
parent(альберт, анушик).
parent(альберт, маргар).
parent(анушик, адель).
parent(хорен, адель).

children(X) :- parent(X, Y), write(Y), nl, fail.

% задание 3
mother(X, Y) :- parent(X, Y), woman(X).
mother(X) :- parent(Y, X), woman(Y), write(Y).
    
% задание 4 / вариант 1
father(X, Y) :- parent(X, Y), man(X).
father(X) :- parent(Y, X), man(Y), write(Y).

% задание 5
brother(X, Y) :- parent(Z, X), parent(Z, Y), man(X).    
brother(X) :- parent(Y, X), parent(Y, Z), man(Z), Z\=X, write(Z), nl, fail.

% задание 6 / вариант 1
sister(X, Y) :- parent(Z, X), parent(Z, Y), woman(X).    
sister(X) :- parent(Y, X), parent(Y, Z), woman(Z), Z\=X, write(Z), nl, fail.

% задание 7
b_s(X, Y) :- parent(Z, X), parent(Z, Y).
b_s(X) :- parent(Z, X), parent(Z, Y), X\=Y, write(Y), nl, fail.

% задание 8
grand_pa(X, Y) :- parent(X, Z), parent(Z, Y), man(X).
grand_pas(X) :- 
    father(Y, X), father(Z, Y), write(Z), nl, fail;
    mother(Y, X), father(Z, Y), write(Z), nl, fail.

% задание 9
grand_ma(X, Y) :- parent(X, Z), parent(Z, Y), woman(X).
grand_mas(X) :- 
    father(Y, X), mother(Z, Y), write(Z), nl, fail;
    mother(Y, X), mother(Z, Y), write(Z), nl, fail.
    
% задание 10
grand_pa_and_son(X, Y) :- father(X, Z), parent(Z, Y), man(Y).

% задание 11
grand_ma_and_son(X, Y) :- mother(X, Z), parent(Z, Y), man(Y).
    
% задание 12
uncle(X, Y) :- parent(Z, Y), brother(X, Z), X\=Z. 
uncle(X) :- parent(Y, X), brother(Z, Y), Y\=Z, write(Z), nl, fail.
    
% задание 13
aunt(X, Y) :- parent(Z, Y), sister(X, Z), X\=Z. 
aunt(X) :- parent(Y, X), sister(Z, Y), Y\=Z, write(Z), nl, fail.







    
    
    
    
    
