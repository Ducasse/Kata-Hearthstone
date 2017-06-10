tests
testIncrementMana

	| p |
	p := HSPlayer new.
	p maximumMana: 7.
	p incrementMana.
	p incrementMana.
	self assert: p maximumMana equals: 9.
	p incrementMana.
	p incrementMana.
	self assert: p maximumMana equals: 10.
	"indeed the max mana is 10."