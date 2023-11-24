teilmenge([], []).
teilmenge([H|T], [H|NT]) :- teilmenge(T, NT).
teilmenge([_|T], NT) :- teilmenge(T, NT).
