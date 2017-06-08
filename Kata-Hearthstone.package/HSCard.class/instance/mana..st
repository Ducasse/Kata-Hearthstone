accessing
mana: anInteger
	(anInteger between: 0 and: 8) 
		ifFalse: [ Error signal: 'Out of range' ]
		ifTrue: [ mana := anInteger ]