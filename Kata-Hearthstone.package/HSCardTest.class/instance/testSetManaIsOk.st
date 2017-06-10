as yet unclassified
testSetManaIsOk

	| card |
	card := HSCard new.
	card mana: 8.
	self assert: card mana = 8.