
% How to run this file?
% This code can be run through the command line.
% Make sure this file and your 'hw3.pl' are in the same folder,
% , and then run this command: "swipl -s Tester.pl".


:- initialization(main).

main :-
    consult('zipcodes.pl'),
    consult('hw3.pl'),


    % #1
    writeln("------#1---------"),
    maxnums(-12, 12, MAX1),
    maxnums(11232, 92674, MAX2),
    maxnums(1, 1, MAX3), 
    maxnums(0, 20, MAX4),
    writeln(MAX2),  % 92674
    writeln(MAX4),  % 20
    writeln(MAX1),  % 12
    writeln(MAX3),  % 1
    (maxnums(-1, -4, -1) -> writeln(true); writeln(false)),  % true
    (maxnums(-7, 0, 0) -> writeln(true); writeln(false)),  % true

    % #2
    writeln("------#2---------"),
    sum([1, 2, 3, 4], SUM1),
    sum([10, -10], SUM2),
    sum([], SUM3),
    sum([-10, -20, 30], SUM4),
    writeln(SUM1),  % 10
    writeln(SUM2),  % 0
    writeln(SUM3),  % 0
    writeln(SUM4),  % 0
    (sum([30], 30) -> writeln(true); writeln(false)),  % true
    (sum([10, 20, 30, 40, 50, 60], 210) -> writeln(true); writeln(false)),  % true
    
    % #3
    writeln("------#3---------"),
    max([-5, -5, -5], M1),
    max([1], M2),
    max([-10, -20, 30], M4),
    max([413, 0, 977], M3),
    writeln(M3),  % 977
    writeln(M4),  % 30
    writeln(M2),  % 1
    writeln(M1),  % -5
    (max([-20], -20) -> writeln(true); writeln(false)),  % ture
    (max([-10, -20, 30, 0], 30) -> writeln(true); writeln(false)),  % true

    % #4
    writeln("------#4---------"),
    (partitionable([1, 2, 3, 4, 10]) -> writeln(true); writeln(false)),  % true
    (partitionable([0]) -> writeln(true); writeln(false)),  % true
    %(partitionable([-2, 1, 1]) -> writeln(true); writeln(false)),  % false
    (partitionable([1, 4, 8]) -> writeln(true); writeln(false)),  % false
    (partitionable([3, 2]) -> writeln(true); writeln(false)),  % false
    (partitionable([3, 2, -5]) -> writeln(true); writeln(false)),  % false

    % #5
    writeln("------#5---------"),
    (elementExist(1, [1, 2, 3]) -> writeln(true); writeln(false)),  % true
    (elementExist(5, [1, 2, 3, 4, 6, 7, 8, 5]) -> writeln(true); writeln(false)),  % true
    (elementExist(1, []) -> writeln(true); writeln(false)),  % false
    (elementExist(-10, [-34, -56, 2]) -> writeln(true); writeln(false)), % false
    (elementExist(-10, [10, 10, -11, 11]) -> writeln(true); writeln(false)),  % false
    (elementExist(0, []) -> writeln(true); writeln(false)),  % false

    % #6
    writeln("------#6---------"),
    reverse([], R1),
    reverse([1, 1, 1], R2),
    reverse([4, 0, -4, 6], R3),
    reverse([47391], R4),
    writeln(R4),  % [47391]
    writeln(R3),  % [6, -4, 0, 4]
    writeln(R2),  % [1, 1, 1]
    writeln(R1),  % []
    (reverse([47391], [47391]) -> writeln(true); writeln(false)),  % true
    (reverse([4, 0, -4, 6, 55], [55, 6, -4, 0, 4]) -> writeln(true); writeln(false)),  % true

    % #7
    writeln("------#7---------"),
    collectOneDigits([10, 90, -20], N1),
    collectOneDigits([], N2),
    collectOneDigits([10, 90, -20, 5, -6], N3),
    collectOneDigits([10, 90, -20, 5, -6, -10], N4),
    writeln(N4),  % [5, -6]
    writeln(N3),  % [5, -6]
    writeln(N1),  % []
    writeln(N2),  % []
    (collectOneDigits([-4, -5, -10, 0, 3], [-4, -5, 0, 3]) -> writeln(true); writeln(false)),  % true
    (collectOneDigits([1, 1, 1, 10, 10], [1, 1, 1]) -> writeln(true); writeln(false)),  % true

    % #8
    writeln("------#8---------"),
    (getStateInfo(_, 'OH', 48122) -> writeln(true); writeln(false)),  %  false
    findall(St1, getStateInfo('Oxford', St1, 45056), StList1),
    findall(St2,  getStateInfo('Oxford', St2, _), StList2),
    length(StList2, Lth),
    writeln(StList1),  % [OH]
    writeln(StList2),  % [AL,AR,CT,FL,GA,GA,IA,IN,KS,MA,MD,ME,MI,MI,MS,NC,NE,NJ,NY,OH,PA,WI]
    writeln(Lth),  % 22
    
    % #9
    writeln("------#9---------"),
    getCommon('OH','MI', LLL), length(LLL, LL),
    writeln(LL),  % 131

    writeln("------#10---------"),
    %(sentence([the, party, bus, shines, brightly]) -> writeln(true); writeln(false)),
    %(sentence([the, big, party, continues]) -> writeln(true); writeln(false)),
    %(sentence([a, big, brown, deer, eats, loudly]) -> writeln(true); writeln(false)),
    %(sentence([big, brown, deer, eat, loudly]) -> writeln(true); writeln(false)),
    %(sentence([the, sun, shines, brightly]) -> writeln(true); writeln(false)),
    %(sentence([the, suns, shine, brightly]) -> writeln(true); writeln(false)),
    %(sentence([the, deer, eats, loudly]) -> writeln(true); writeln(false)),
    %(sentence([the, deer, eat, loudly]) -> writeln(true); writeln(false)),
    %(sentence([the, sun, shine, brightly]) -> writeln(true); writeln(false)),
    %(sentence([the, suns, shines, brightly]) -> writeln(true); writeln(false)),

    halt.