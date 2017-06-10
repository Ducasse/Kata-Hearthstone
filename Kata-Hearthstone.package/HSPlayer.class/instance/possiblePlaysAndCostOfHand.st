utils
possiblePlaysAndCostOfHand
	"Returns the possible plays and their cost (currently their sum)"
	
	^ hand combinations 
		collect: [ :cards | 
			(cards inject: 0 into: [ :sum :each | each mana + sum ])
			-> cards 
		]
	