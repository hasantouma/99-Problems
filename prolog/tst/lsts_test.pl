:- use_module(library(plunit)).
:- use_module(['../src/lsts.pl']).

:- begin_tests(test_last).
test(last_base_case, fail) :-
    last(_, []).

test(last_single_case) :-
    last(a, [a]).

test(last_general_case) :-
    last(d, [a,b,c,d]).
:- end_tests(test_last).


:- begin_tests(test_last_but_one).
test(last_but_one_base_case, fail) :-
    last_but_one(_, []).

test(last_but_one_single_case, fail) :-
    last_but_one(_, [_]).

test(last_but_one_double_case) :-
    last_but_one(a, [a,b]).

test(last_but_one_general_case) :-
    last_but_one(c, [a,b,c,d]).
:- end_tests(test_last_but_one).


:- begin_tests(test_element_at).
test(element_at_base_case, fail) :-
    element_at(_,[],_).

test(element_at_single_case) :-
    element_at(a, [a], 1).

test(element_at_fail_single_case, fail) :-
    element_at(_, [_], 2).

test(element_at_general_case) :-
    element_at(c, [a,b,c,d,e], 3).

test(element_at_fail_general_case, fail) :-
    element_at(_, [a,b,c,d,e], 6).
:- end_tests(test_element_at).


:- begin_tests(test_elements_in_list).
test(elements_in_list_base_case) :-
    elements_in_list(0, []).

test(elements_in_list_single_case) :-
    elements_in_list(1, [a]).

test(elements_in_list_general_case) :-
    elements_in_list(4, [a,b,c,d]).
:- end_tests(test_elements_in_list).


:- begin_tests(test_travis_matrix).
test(failed_case) :- false.
:- end_tests(test_travis_matrix).
