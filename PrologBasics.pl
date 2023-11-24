%   consult('[INSERT DIRECTORY HERE]/PrologBasics.pl').
%   ?- consult('C:/Users/cpych/OneDrive/Desktop/PrologBasics.pl').

%   PREDICATES
magicNumber(1).
magicNumber(2).
magicNumber(42).

mensch(du).
mensch(ich).
%mensch(er).
mensch(sie).
%mensch(es).
%liebt(ich, du). %ich liebe dich NICHT du liebst mich
%liebt(ich, pc).

%    VARIABLES
%liebt(ich, X). %Variabblen werden mit allem unifiziert: Hier liebe ich alles
%liebt(X, du).  %Alles liebt dich

%    RULES
%    :- if, then
%    , und
%liebt(ich, X) :- a1, a2. %Ich liebe x, WENN a1 UND a2 wahr sind
liebt(ich, X) :- liebt(X, du), mensch(X).
liebt(sie, du).
%liebt(sie2, du).

%text_ist_gleich(T1, T2) :- T1 == T2.     %true falls 2 gleich strings mitgegeben werden
text_ist_gleich(T1, T2) :- T1 \= T2.     %true falls 2 verschiedene strings mitgegeben werden

%    DATABASE
grosseltern(X,Z) :- eltern(X,Y), eltern(Y,Z).

vater(X,Y) :- maennlich(X), kind(X,Y).
mutter(X,Y) :- weiblich(X), kind(X,Y).
eltern(X,Y) :- vater(X,Y).
eltern(X,Y) :- mutter(X,Y).

maennlich(eddard).
maennlich(rickard).
maennlich(hoster).
weiblich(catelyn).

kind(eddard,robb).
kind(eddard,sansa).
kind(rickard,eddard).
kind(eddard,bran).
kind(eddard,arya).
kind(rickard,benjen).
kind(catelyn,robb).
kind(eddard,sansa).
kind(hoster,catelyn).
kind(catelyn,bran).
kind(catelyn,arya).

%    LISTS
write([X|[Y,Z]]). %?- write([1|[2,3]]). -> [1,2,3]
%laenge([_Head|Tail], Laenge) :- laenge(Tail,LTail), Laenge is 1 + LTail.

%?-  [X|Y] = [1,2,3,4]. -> X ist Kopf, Y ist Rest -> X= 1, Y= [2,3,4]
isIn(X,[X|R]). %wenn wir X am Anfang einer Liste finden und es steht noch etwas
               %im Folgenden, ist die Aussage wahr.
isIn(X,[Y|R]) :- isIn(X,R). %Aufruf von "isIn(X,[X|R])."
%Wir schauen das erste Element an. Falls X, dann wahr. ist es nicht das erste Element,
%dann wird das vorderste entfernt und im Rest weitergesucht - REKURSION

%Wir können auch Listen als Rückgabetypen benutzen
appendList([], L, L).
appendList([X|R], L, [X|T]) :- appendList(R, L, T).
%wenn append(R,L,T). gilt, dann gilt der linke Teil
%?- appendList([1,2,3],[4,5,6],T).
%T = [1, 2, 3, 4, 5, 6].

%?- appendList([1,2,3],X,T).
%T = [1, 2, 3|X]. -> X ist jetzt alles







