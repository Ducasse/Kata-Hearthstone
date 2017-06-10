action
playIfPossible

	| p |
	Transcript show:'Turn switch'; cr.
	self trace.
	"self halt."
	p := self bestPossiblePlay.
	p ifNotEmpty: [  
		self playCards: (self bestPossiblePlay first value).
		self trace]
		ifEmpty: [ Transcript show:'no play possible';cr ]