location(monkey, door).
location(box, middle).
banana_at(middle).

move(monkey, door, middle).
move(monkey, middle, box).
climb(monkey, box).
get_banana(monkey, middle).

monkey_gets_banana :-
    location(monkey, door),
    location(box, middle),
    banana_at(middle),
    move(monkey, door, middle),
    move(monkey, middle, box),
    climb(monkey, box),
    get_banana(monkey, middle),
    write('Monkey gets the banana.'), nl.
