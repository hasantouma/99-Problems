:- module(lsts,[
    last/2,
	last_but_one/2,
	element_at/3,
	elements_in_list/2
   ]).

% P01 (*) Find the last element of a list.
last(X, [X])   :- !.
last(X, [_|T]) :- last(X, T).

% P02 (*) Find the last but one element of a list.
last_but_one(X, [X,_]) :- !.
last_but_one(X, [_|T]) :- last_but_one(X, T).

% P03 (*) Find the K'th element of a list.
element_at(H, [H|_], 1) :- !.
element_at(X, [_|T], N) :- N1 is N - 1,
                           element_at(X, T, N1).

% P04 (*) Find the number of elements of a list.
elements_in_list(0, [])    :- !.
elements_in_list(N, [_|T]) :- elements_in_list(N1, T),
							  N is N1 + 1.


