action
playIfPossible
	"The strategy is to 
		- play all the cards when there is more mana than card cost. 
		- else play the cards with the max cost but with the minimum cards
		ie if we have 3 and 1 2 better play 3 because next turn it may be easier to play 1 + a new card.
	"
	| plays  currentTry shouldRetry cards |
	plays := self possiblePlaysAndCostOfHand.
	plays := plays groupedBy: #key.
	currentTry := self maximumMana. 
	shouldRetry := true. 
	[ shouldRetry and: [currentTry > 0]] whileTrue: [
			shouldRetry := false.
			cards := plays at: currentTry ifAbsent: [ shouldRetry := true. #() ].
			currentTry := currentTry - 1.
			shouldRetry.].
	^ cards sorted: [ :cards1 :cards2 | cards1 value size < cards2 value size]
	
	 