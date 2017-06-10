phases
currentPlayerPlay

	self setCurrentPlayer.
	currentPlayer incrementMana.
	currentPlayer drawACard.
	currentPlayer playIfPossible.