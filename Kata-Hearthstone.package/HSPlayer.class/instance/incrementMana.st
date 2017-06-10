action
incrementMana
	maximumMana = 10 
		ifTrue: [ ^ self ].
	maximumMana := maximumMana + 1.