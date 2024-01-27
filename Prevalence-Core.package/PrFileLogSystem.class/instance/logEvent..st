building
logEvent: aPrEvent 
	logWriter nextPutAll: (STON toString: aPrEvent); flush.
	