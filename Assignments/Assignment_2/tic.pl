% Felix Singerman -- 7970742

:- initialization((nl, nl, nl, nl, nl, write('Hi, In order to play the game type XXX. Then do XXX after each turn...... etc'))).

% Players
players(x,o).
player1(x).
player2(o).

% The gamaBoard design
gameBoard([A,B,C,D,E,F,G,H,I]) :- 
	nl, write([A,B,C]),
	nl, write([D,E,F]), 
	nl, write([G,H,I]), nl.

% Possible ways to win 
win(Game,  Player) :- Tictactoe = [ Player, _, _, Player, _, _, Player, _, _].
win(Game,  Player) :- Tictactoe = [ _, Player, _, _, Player, _, _, Player, _].
win(Game,  Player) :- Tictactoe = [ _, _, Player, _, _, Player, _, _, Player].
win(Game,  Player) :- Tictactoe = [ Player, Player, Player, _, _, _, _, _, _].
win(Game,  Player) :- Tictactoe = [ _, _, _, Player, Player, Player, _, _, _].
win(Game,  Player) :- Tictactoe = [ _, _, _, _, _, _, Player, Player, Player].
win(Game,  Player) :- Tictactoe = [ Player, _, _, _, Player, _, _, _, Player].
win(Game,  Player) :- Tictactoe = [ _, _, Player, _, Player, _, Player, _, _].

% Check to see if the game has a winner
gameOver(Game, Player) :- win(Tictactoe, Player).

%% % Possible ways to win by column
%% column(Game,  Player) :- Tictactoe = [ Player, _, _, Player, _, _, Player, _, _].
%% column(Game,  Player) :- Tictactoe = [ _, Player, _, _, Player, _, _, Player, _].
%% column(Game,  Player) :- Tictactoe = [ _, _, Player, _, _, Player, _, _, Player].

%% % Possible ways to win by row
%% row(Game,  Player) :- Tictactoe = [ Player, Player, Player, _, _, _, _, _, _].
%% row(Game,  Player) :- Tictactoe = [ _, _, _, Player, Player, Player, _, _, _].
%% row(Game,  Player) :- Tictactoe = [ _, _, _, _, _, _, Player, Player, Player].

%% % Possible ways to by diagonal
%% diagonal(Game,  Player) :- Tictactoe = [ Player, _, _, _, Player, _, _, _, Player].
%% diagonal(Game,  Player) :- Tictactoe = [ _, _, Player, _, Player, _, Player, _, _].

%% % Ways the game ends(row, column, diagonal is achieved)
%% gameOver(Game, Player) :- row(Tictactoe, Player).
%% gameOver(Game, Player) :- column(Tictactoe, PLayer).
%% gameOver(Game, Player) :- diagonal(Tictactoe, Player).


% do something for it to display the winner, either X or O
play(Game, Player) :- gameOver(Tictactoe,Player), !.
play(Game, Player) :- player1(Player, Opponent), 
	move(Tictactoe, Player, Relocate), !,
	gameBoard(Relocate), 
	play(Relocate, Opponent). 



