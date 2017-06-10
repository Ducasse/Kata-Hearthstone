tests
testCardPlayIfPossibleTwoChoices

	| p  oneChoice |
	p := HSPlayer new.
	p maximumMana: 3.
	"we get 3 or 1 + 2"
	p hand: {(HSCard withMana: 3).(HSCard withMana: 1).(HSCard withMana: 2)}.
	oneChoice := p playIfPossible.  
	"we should get 3 because this is better to consume large ones"
	self assert: oneChoice first value size equals: 1.
	self assert: (oneChoice first value inject: 0 into: [ :sum :each | sum + each mana ]) equals: 3
	 
