tests
testUseManaOfCard

	| p  |
	p := HSPlayer new.
	p maximumMana: 5.
	p refillMana. 
	p useManaOfCard: (HSCard withMana: 3).
	self assert: p currentMana equals: 2