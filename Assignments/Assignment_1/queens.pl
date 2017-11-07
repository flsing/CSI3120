%%%%%%%%%%%%%%%%%% Felix Singerman 7970742  %%%%%%%%%%%%%%%%%%%%%%

%% whether or not a queen is safe (ie cant be attacked)
%% check the rows and column and continue on the list
safe(_, []).
safe( First/Second, [ FFirst/SSecond | Location]) :- SSecond - Second =\= First - FFirst,
								  					SSecond - Second =\= FFirst - First,
								  					Second =\= SSecond,
								  					safe(First / Second, Location).

%% running the queens test
queens([]).
queens([First/Second | Location]) :- queens( Location ),
									member(Second, [1, 2, 3, 4, 5, 6, 7, 8]),
									safe(First/Second, Location).

