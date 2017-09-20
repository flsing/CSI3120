soulution([X/Y|other]) :-
    solution(other),
    member(Y,[1,2,3,4,5,6,7,8]),
    no_attack(X/Y, other).

no_attack(_,[]).

no_attack(X/Y,[X1/Y1,other]):-
    Y=/=Y1,
    X-X1=/=Y-Y1,
    no_attack(X/Y,other),
    member*item,[Item|Reset}).

member(Item, [First|Rest]):-
    member(Item,Reset).


