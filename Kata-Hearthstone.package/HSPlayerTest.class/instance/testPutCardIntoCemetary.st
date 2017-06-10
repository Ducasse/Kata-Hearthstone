tests
testPutCardIntoCemetary

	| p  |
	p := HSPlayer new.
	p drawACard.
	p drawACard.
	p drawACard.
	p putCardIntoCemetary: p hand first.
	self assert: p hand size = 2.
	p putCardIntoCemetary: p hand first.
	self assert: p hand size = 1.