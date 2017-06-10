tests
testCardCombinaison

	| p  |
	p := HSPlayer new.
	p maximumMana: 5.
	p hand: {(HSCard withMana: 3).(HSCard withMana: 1).(HSCard withMana: 2)}.
	self assert: (p possiblePlaysAndCostOfHand inject: 0 into: [ :sum :each | sum + each key  ]) equals: 24.
	self assert: (p possiblePlaysAndCostOfHand first value size = 1)