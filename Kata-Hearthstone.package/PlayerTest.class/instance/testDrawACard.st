tests
testDrawACard

	| p  |
	p := HSPlayer new.
	p drawACard.
	self assert: p hand size = 1.
	self assert: p deck size = 19. 
	p drawACard.
	p drawACard.
	self assert: p hand size = 3.
	self assert: p deck size = 17. 