phases
nextPlayerPlay
	
	finished ifFalse: [  
		self setCurrentPlayer.
		currentPlayer incrementMana.
		currentPlayer refillMana.
		currentPlayer drawACard.
		currentPlayer playIfPossible.
		currentPlayer opponent isDead 
			ifTrue: [ Transcript show: currentPlayer id , ' wins' ; cr.
								finished := true ]]