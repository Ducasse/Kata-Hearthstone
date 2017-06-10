phases
setup

	player1 := HSPlayer new. 
	player2 := HSPlayer new.
	player1 opponent: player2.
	player2 opponent: player1.
	currentPlayer := player1.
	
	3 timesRepeat: [ player1 drawACard ].
	3 timesRepeat: [ player2 drawACard ] 
