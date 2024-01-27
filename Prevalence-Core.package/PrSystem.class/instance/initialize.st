initialization
initialize
	nextId := 0.
	mutex := Mutex new.
	db := PrUninitializedDb new.