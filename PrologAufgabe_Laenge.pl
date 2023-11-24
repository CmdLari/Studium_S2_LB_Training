%Schreiben Sie ein Pr�dikat laenge/2, das die L�nge einer
%Liste bestimmt, bzw. �berpr�ft etc.

%?- laenge([a,b,c],L). L = 3.
%?- laenge([a,b,c],3). true.
%?- laenge(L,3). L = [_6440, _6446, _6452] .

laenge([],0).
laenge([_Head|Tail], Laenge) :- laenge(Tail,LTail), Laenge is 1 + LTail.
