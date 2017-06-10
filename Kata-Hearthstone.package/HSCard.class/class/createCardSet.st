game setup
createCardSet
	"self createCardSet"
	
	"^ #(0 0 1 1 2 2 2 3 3 3 3 4 4 4 5 5 6 6 7 8)
			collect: [ :each | HSCard withMana: each ]"
			
	| col  res |
	col := #(0 0 1 1 2 2 2 3 3 3 3 4 4 4 5 5 6 6 7 8).		
	res := OrderedCollection new: col size.
	1 to: col size do: [ :index | 
		res add: (HSCard withMana: (col at: index))
		].
	^ res 