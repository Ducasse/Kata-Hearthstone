printing
printOn: aStream

	aStream << id.
	aStream << ' M:' << self maximumMana.
	aStream << ' H:'.
	hand do: [ :each | aStream << each mana ]
		separatedBy: [ aStream << '-']. 
	aStream << ' L:' << health.
	
	"
	aStream << 'D:'.
	deck do: [ :each | aStream << each mana ]
		separatedBy: [ aStream << '-'] 	
   "
	