initialize
initialize 
	super initialize.
	id := 'Player 1'.
	health := 30.
	maximumMana := 0.
	currentMana := 0.
	deck := HSCard createCardSet shuffle.
	hand := OrderedCollection new.