initialize
initialize 
	super initialize.
	health := 30.
	maximumMana := 0.
	deck := HSCard createCardSet shuffle.
	hand := OrderedCollection new.