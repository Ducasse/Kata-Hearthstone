tests
testPlayerAtBeginning

	| p |
	p := HSPlayer new.
	self assert: p maximumMana isZero.
	self assert: p health equals: 30.
	self assert: p deck size = 20.
	self assert: p hand size = 0.