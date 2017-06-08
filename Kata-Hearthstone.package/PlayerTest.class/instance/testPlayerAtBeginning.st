tests
testPlayerAtBeginning

	| p |
	p := Player new.
	self assert: p maximumMana isZero.
	self assert: p health equals: 30