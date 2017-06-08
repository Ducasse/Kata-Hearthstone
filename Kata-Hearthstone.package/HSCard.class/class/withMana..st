instance creation
withMana: anInteger
	| card |
	card := self new. 
	card mana: anInteger.
	^ card