mitglied(_Element, [])  :- false.
mitglied(Element, [Element|Rest])  :- true.
%mitglied(Element, [Head|Rest])  :- Head == Element
mitglied(Element, [_Kopf|Rest])  :- mitglied(Element,Rest).

%		INPUT	OUTPUT
laenge([],0).
%laenge ([_Head|Tail],1 + LTail :- laenge(Tail,LTail).
laenge([_Head|Tail],Laenge) :- laenge(Tail,LTail), Laenge is 1+Tail.

%>>>		Mit Akkumulator
%		Input, Input, Output
%		Zu verarbeitende Liste, Neue Ergebnisliste, Rückgabewert
delete_last (Input,Output) :- delete_last(Input,Akku,Output)
delete_last([],Akku,Akku).
%delete_last([],Akku,Output) :- Output = Akku.
delete_last([_H],Akku,Akku).
delete_last ([Kopf|Rest],Akku,Output) :-
		append(Akku,[Kopf],NewAkku),
		delete_last(Rest,NewAkku,Output).

&		Ohne Akkumulator
delete_last2([],[]).
delete_last2([H],[]).
delete_last2([Kopf|Rest],Output) :-
		delete_last2(Rest,OutputRest),
		append([Kopf],OutputRest,Output).
