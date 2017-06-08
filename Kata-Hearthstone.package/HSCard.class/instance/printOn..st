printing
printOn: aStream

	aStream nextPutAll: 'HSCard (M='.
	aStream nextPutAll: (self mana printString).
	aStream nextPutAll: ')'

	