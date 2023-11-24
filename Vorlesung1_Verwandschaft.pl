maennlich(karl).
maennlich(max).
maennlich(hans).
maennlich(luis).

weiblich(anna).
weiblich(lena).
weiblich(julia).

elternteil(anna, max).
elternteil(karl, max).
elternteil(anna, luis).
elternteil(karl, luis).
elternteil(lena, julia).
elternteil(hans, julia).

% mutter(anna). -auskommentiert für Test
% vater(karl). -auskommentiert für Test
% mutter(lena). -auskommentiert für Test
% vater(hans). -auskommentiert für Test


mutter(Mutter, Kind) :- elternteil(Mutter,Kind), weiblich(Mutter).
vater(Vater, Kind) :- elternteil(Vater,Kind), maennlich(Vater).

% Anfrage: ?- vater(Vater, max). -muss zu karl führen

mutter(Mutter,Kind) :- elternteil :-(Mutter, Kind),write("."),weiblich(Mutter),nl.
vater(Vater,Kind) :- elternteil :-(Vater, Kind),write("."),maennlich(Vater),nl.

