:- use_module(library(pairs)).

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(e, g).

heuristic(a, 7).
heuristic(b, 5).
heuristic(c, 3).
heuristic(d, 1).
heuristic(e, 2).
heuristic(f, 4).
heuristic(g, 0).

best_first(Start, Goal, Path) :-
    best_first_search([[Start]], Goal, [], RevPath),
    reverse(RevPath, Path).

best_first_search([[Goal|Rest]|_], Goal, _, [Goal|Rest]).

best_first_search([[Node|Rest]|Queue], Goal, Visited, Path) :-
    \+ member(Node, Visited),
    findall(
        [Next,Node|Rest],
        (edge(Node, Next), \+ member(Next, Visited)),
        NewPaths
    ),
    append(Queue, NewPaths, NewQueue),
    sort_paths(NewQueue, SortedQueue),
    best_first_search(SortedQueue, Goal, [Node|Visited], Path).

sort_paths(Paths, SortedPaths) :-
    map_list_to_pairs(path_cost, Paths, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedPaths).

path_cost([Node|_], Cost) :-
    heuristic(Node, Cost).
