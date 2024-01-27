Class {
	#name : #PrFileLogSystem,
	#superclass : #PrSystem,
	#instVars : [
		'logDir',
		'batchSize',
		'logWriter'
	],
	#category : #'Prevalence-Core'
}

{ #category : #accessing }
PrFileLogSystem >> logDir: aDir [ 
	logDir := aDir.
]

{ #category : #building }
PrFileLogSystem >> logEvent: aPrEvent [ 
	logWriter nextPutAll: (STON toString: aPrEvent); flush.
	
]

{ #category : #accessing }
PrFileLogSystem >> start [
	self assert: [ logDir exists & logDir isDirectory ].
	"load from Fuel snapshot 
	 and load them:   self becomeForward: loadedSnapshot
	replay logs here? ofr image based persistence, check
	logDir files"
	logWriter := (logDir / 'pr_', nextId asString, '.log') writeStream
]
