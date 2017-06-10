tests
testCardPlayIfPossibleNotUsingMaximum

	| p  oneChoice |
	p := HSPlayer new.
	p maximumMana: 5.
	p hand: { (HSCard withMana: 3)  }.
	oneChoice := p bestPossiblePlay.   
	self assert: oneChoice first value size equals: 1.
	self assert: (oneChoice first value inject: 0 into: [ :sum :each | sum + each mana ]) equals: 3
	 
