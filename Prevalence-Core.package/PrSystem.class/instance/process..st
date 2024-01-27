visiting
process: aPrEvent
	"Process a PrEvent."
	mutex critical: [ 
		aPrEvent id: nextId; ts: DateAndTime now.
		nextId := nextId + 1.
		self logEvent: aPrEvent.
		aPrEvent process: db
	].