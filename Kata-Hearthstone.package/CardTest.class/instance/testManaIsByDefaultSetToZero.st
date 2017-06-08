as yet unclassified
testManaIsByDefaultSetToZero

	| card |
	card := HSCard new.
	self assert: card mana isNil not.
	