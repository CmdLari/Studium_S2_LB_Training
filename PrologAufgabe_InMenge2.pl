%Schreiben Sie ein Prädikat inmenge/2, das eine Liste in eine
%Menge transformiert. Dieses Prädikat soll mit Akkumulator
%arbeiten. Sie können append/3 verwenden.

%?- inmenge([a,b,b,c,c,a,b,c,a,b,b,c,a,a,a,a,a,a,b],Menge).
%Menge = [a, b, c].

inmenge([], Menge). %Abbruchbedingung
%append(A, B, C): A= Alle Elemente außer dem letzten, B= letztes Element, C= Gesamtliste
inmenge([H|T], Menge) :- append(A, H, C), inmenge(T, C).  -> inmenge
