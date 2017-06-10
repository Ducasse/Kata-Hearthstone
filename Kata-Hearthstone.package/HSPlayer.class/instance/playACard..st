action
playACard: aCard
	
	currentMana >= aCard mana 
		ifTrue: [ 
			self useManaOfCard: aCard.
			self putCardIntoCemetary: aCard. 
			self dealDamage: aCard mana.
			]