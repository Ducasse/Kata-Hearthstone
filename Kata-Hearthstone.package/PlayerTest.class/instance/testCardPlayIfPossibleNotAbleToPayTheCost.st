tests
testCardPlayIfPossibleNotAbleToPayTheCost

	| p  oneChoice |
	p := HSPlayer new.
	p maximumMana: 3.
	p hand: { (HSCard withMana: 4)  }.
	oneChoice := p playIfPossible.   
	self assert: oneChoice isEmpty
	
	 
