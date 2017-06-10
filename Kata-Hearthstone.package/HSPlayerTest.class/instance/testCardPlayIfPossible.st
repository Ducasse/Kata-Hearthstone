tests
testCardPlayIfPossible

	| p  oneChoice |
	p := HSPlayer new.
	p maximumMana: 5.
	p hand: {(HSCard withMana: 3).(HSCard withMana: 1).(HSCard withMana: 2)}.
	oneChoice := p bestPossiblePlay.   
	self assert: oneChoice first value size equals: 2.
	self assert: (oneChoice first value inject: 0 into: [ :sum :each | sum + each mana ]) equals: 5
	 
