%%%%%%%%%%%%%%%%%%%%%%%% Felix Singerman -- 7970742 %%%%%%%%%%%%%%%%%%%%%%%%%%

% Assumption : play 2 players on same computer against eachother -- not vs
% a computer Opponent

:- initialization((nl, nl, nl, nl, nl, write('Hi, In order to play the game type XXX. Then do YYY after each turn...... etc'))).

% Players
player(x,o).


% The gamaBoard design
gameBoard([A,B,C,D,E,F,G,H,I]) :- 
	nl, write([A,B,C]),
	nl, write([D,E,F]), 
	nl, write([G,H,I]), nl.

% Possible ways to win 
win(Game,  Player) :- Game = [ Player, _, _, Player, _, _, Player, _, _].
win(Game,  Player) :- Game = [ _, Player, _, _, Player, _, _, Player, _].
win(Game,  Player) :- Game = [ _, _, Player, _, _, Player, _, _, Player].
win(Game,  Player) :- Game = [ Player, Player, Player, _, _, _, _, _, _].
win(Game,  Player) :- Game = [ _, _, _, Player, Player, Player, _, _, _].
win(Game,  Player) :- Game = [ _, _, _, _, _, _, Player, Player, Player].
win(Game,  Player) :- Game = [ Player, _, _, _, Player, _, _, _, Player].
win(Game,  Player) :- Game = [ _, _, Player, _, Player, _, Player, _, _].

% Check to see if the game has a winner
gameOver(Game, Player) :- win(Game, Player).


% possible moves for both players

player1_move(1, [x,B,C,D,E,F,G,H,I]).
player1_move(2, [A,x,C,D,E,F,G,H,I]).
player1_move(3, [A,B,x,D,E,F,G,H,I]).
player1_move(4, [A,B,C,x,E,F,G,H,I]).
player1_move(5, [A,B,C,D,x,F,G,H,I]).
player1_move(6, [A,B,C,D,E,x,G,H,I]).
player1_move(7, [A,B,C,D,E,F,x,H,I]).
player1_move(8, [A,B,C,D,E,F,G,x,I]).
player1_move(9, [A,B,C,D,E,F,G,H,x]).

player2_move(1, [o,B,C,D,E,F,G,H,I]).
player2_move(2, [A,o,C,D,E,F,G,H,I]).
player2_move(3, [A,B,o,D,E,F,G,H,I]).
player2_move(4, [A,B,C,o,E,F,G,H,I]).
player2_move(5, [A,B,C,D,o,F,G,H,I]).
player2_move(6, [A,B,C,D,E,o,G,H,I]).
player2_move(7, [A,B,C,D,E,F,o,H,I]).
player2_move(8, [A,B,C,D,E,F,G,o,I]).
player2_move(9, [A,B,C,D,E,F,G,H,o]).



play :- %not(gameOver(Game, Player)), !, 
	player(Player, Opponent), 

	write('Player 1'),
	read(Position),
	player1_move(Position, Relocate), !,
	gameBoard(Relocate),

	write('Player 2 turn'),
	read(Position2),
	player2_move(Position2, Relocate), !, 
	gameBoard(Relocate),

	write('Player 1'),
	read(Position3),
	player1_move(Position3, Relocate), !,
	gameBoard(Relocate),

	write('Player 2 turn'),
	read(Position4),
	player2_move(Position4, Relocate), !, 
	gameBoard(Relocate),

	write('Player 1'),
	read(Position5),
	player1_move(Position5, Relocate), !,
	gameBoard(Relocate),

	write('Player 2 turn'),
	read(Position6),
	player2_move(Position6, Relocate), !, 
	gameBoard(Relocate),

	write('Player 1'),
	read(Position7),
	player1_move(Position7, Relocate), !,
	gameBoard(Relocate),

	write('Player 2 turn'),
	read(Position8),
	player2_move(Position8, Relocate), !, 
	gameBoard(Relocate),

	write('Player 1'),
	read(Position9),
	player1_move(Position9, Relocate), !,
	gameBoard(Relocate),


	%play(Relocate, Player). 

%play(Game, Player) :- gameOver(Game, Player), !.



