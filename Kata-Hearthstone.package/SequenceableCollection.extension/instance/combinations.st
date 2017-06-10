*Kata-Hearthstone
combinations
	"#(1 2 3 4) combinations"
	^ Array streamContents: [
        :stream |
        1 to: self size do: [
            :take |
            self combinations: take atATimeDo: [
                :combination |
                stream nextPut: combination copy ] ] ].
