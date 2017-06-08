tests
testSettingWrongManaIsAnError

	| card |
	card := HSCard new.
	self shouldnt: [ card mana: 8 ] raise: Error.
	self shouldnt: [ card mana: 0 ] raise: Error.
	
	self should: [  card mana: 255 ] raise: Error.
	self should: [  card mana: -200 ] raise: Error
	
	