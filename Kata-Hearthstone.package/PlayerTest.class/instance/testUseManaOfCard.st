tests
testUseManaOfCard

	| p  |
	p := HSPlayer new.
	p maximumMana: 5.
	p useManaOfCard: (HSCard withMana: 3).
	self assert: p maximumMana = 2